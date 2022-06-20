#!/bin/bash

grep -i grep s21_grep.c > grep.txt
./s21_grep -i grep s21_grep.c > grep_21.txt
diff -s grep.txt grep_21.txt
