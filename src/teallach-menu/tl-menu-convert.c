// SPDX-License-Identifier: GPL-2.0-only
/* Copyright (C) Johan Malm 2025 */
#define _POSIX_C_SOURCE 200809L
#include <glib.h>
#include <stdio.h>

static struct {
	int current;
	int last;
} indent;

/* To handle glib <2.68 */
static void
replace(GString *s, const char *before, const char *after, int limit)
{
	char **split = g_strsplit(s->str, before, limit - 1);
	g_string_assign(s, g_strjoinv(after, split));
	g_strfreev(split);
}

static void
spawn(const char *line)
{
	GString *command = g_string_new(line);
	replace(command, "~", getenv("HOME"), 0);

	GError *err = NULL;
	g_spawn_command_line_sync(command->str, NULL, NULL, NULL, &err);
	if (err) {
		fprintf(stderr, "g_spawn_command_line_sync()");
		g_error_free(err);
	}

	g_string_free(command, TRUE);
}

int
nr_args(gchar **argv)
{
	int i = 0;
	for (gchar **arg = argv; *arg; arg++) {
		++i;
	}
	return i;
}

void
create_menu(gchar **argv)
{
	if (nr_args(argv) != 1) {
		return;
	}
	printf("<menu id=\"%s\" label=\"%s\">\n", argv[0], argv[0]);
}

void
create_sep(gchar **argv)
{
	if (nr_args(argv) != 0) {
		return;
	}
	printf("<separator/>\n");
}

void
create_conf(gchar **argv)
{
	if (nr_args(argv) != 1) {
		return;
	}
	printf("<item label=\"%s\">", argv[0]);
	printf("  <action name=\"Reconfigure\"/>");
	printf("</item>\n");
}

void
create_exit(gchar **argv)
{
	if (nr_args(argv) != 1) {
		return;
	}
	printf("<item label=\"%s\">", argv[0]);
	printf("  <action name=\"Exit\"/>");
	printf("</item>\n");
}

void
create_item(gchar **argv)
{
	if (nr_args(argv) != 2) {
		return;
	}
	printf("<item label=\"%s\">", argv[0]);
	printf("  <action name=\"Execute\"><command><![CDATA[%s]]></command></action>", argv[1]);
	printf("</item>\n");
}

int get_indent(const char *line)
{
	int i = 0;
	for (char *p = (char *)line; *p && (*p == ' ' || *p == '\t'); ++p) {
		++i;
	}
	return i;
}

void
process_line(const char *line)
{
	GError *err = NULL;
	gchar **argv = NULL;
	g_shell_parse_argv((gchar *)line, NULL, &argv, &err);
	if (err) {
		g_message("%s", err->message);
		g_error_free(err);
		return;
	}
	if (!g_strcmp0(argv[0], "menu")) {
		create_menu(argv + 1);
	} else if (!g_strcmp0(argv[0], "item")) {
		create_item(argv + 1);
	} else if (!g_strcmp0(argv[0], "sepr")) {
		create_sep(argv + 1);
	} else if (!g_strcmp0(argv[0], "conf")) {
		create_conf(argv + 1);
	} else if (!g_strcmp0(argv[0], "exec")) {
		fflush(stdout);
		spawn(line + 4);
		fflush(stdout);
	} else if (!g_strcmp0(argv[0], "exit")) {
		create_exit(argv + 1);
	}
	g_strfreev(argv);
}

void
parse(FILE *stream)
{
	char *line = NULL;
	size_t len = 0;
	while (getline(&line, &len, stream) != -1) {
		char *p = strrchr(line, '\n');
		if (p) {
			*p = '\0';
		}
		if (!line || !*line || line[0] == '#') {
			continue;
		}
		indent.current = get_indent(line);
		if (indent.current < indent.last) {
			printf("</menu>\n");
		}
		process_line(line);
		indent.last = indent.current;
	}
	if (indent.last) {
		printf("</menu>\n");
	}
	free(line);
}

int
main(int argc, char **argv)
{
	printf("<openbox_pipe_menu>\n");
	parse(stdin);
	printf("</openbox_pipe_menu>\n");
}
