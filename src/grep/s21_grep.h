#ifndef SRC_GREP_S21_GREP_H_
#define SRC_GREP_S21_GREP_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <getopt.h>
#include <unistd.h>
#include <regex.h>

#define FLAG_REGEXP               (1U << 0U)
#define FLAG_IGNORE_CASE          (1U << 1U)
#define FLAG_INVERT_MATCH         (1U << 2U)
#define FLAG_COUNT                (1U << 3U)
#define FLAG_FILE_WITH_MATCHES    (1U << 4U)
#define FLAG_LINE_NUMBER          (1U << 5U)
#define FLAG_LAST_CHAR            (1U << 6U)

struct option long_options[] = {
        { "regexp", required_argument, NULL, 'e' },
        { "ignore-case", no_argument, NULL, 'i' },
        { "invert-match", no_argument, NULL, 'v' },
        { "count", no_argument, NULL, 'c' },
        { "files-with-matches", no_argument, NULL, 'l' },
        { "line-number", no_argument, NULL, 'n' },
        { NULL, 0, NULL, 0 }
};

enum control {
    PRINT_FILE         = 0,
    DO_NOT_PRINT_FILE = 1
};

enum path_type {
    FILE_EXISTS     = 17,
    NO_FILE_OR_DIR  = 2,
    IS_DIR          = 21
};

struct string_node {
    char *str;
    struct string_node *next;
};

void s21_grep(int argc, char **argv);

#endif  // SRC_GREP_S21_GREP_H_
