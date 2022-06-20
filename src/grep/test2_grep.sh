#!/bin/bash

echo "test2_grep starts"

TEST_PATH="./test_results/"
SUCCESS=0
FAIL=0
TEST_NUM=0

if [ ! -d $TEST_PATH ]; then
  mkdir -p $TEST_PATH;
fi

rm log_fail.txt log_success.txt

TEST1="grep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST1}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST1}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep grep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep grep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST1" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST1" >> log_fail.txt
    (( FAIL++ ))
fi

TEST2="gRep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST2}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST2}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep gRep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep gRep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST2" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST2" >> log_fail.txt
    (( FAIL++ ))
fi

TEST3="-i grep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST3}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST3}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -i grep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -i grep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST3" >> log_success.txt
    (( SUCCESS++ ))
  else

    echo "$TEST3" >> log_fail.txt
    (( FAIL++ ))
fi

TEST4="-i gRep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST4}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST4}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -i gRep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -i gRep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST4" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST4" >> log_fail.txt
    (( FAIL++ ))
fi

TEST5="-v grep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST5}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST5}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -v grep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -v grep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST5" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST5" >> log_fail.txt
    (( FAIL++ ))
fi

TEST6="-c grep s21_grep.c"
(( TEST_NUM++ ))
echo "${TEST6}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST6}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -c grep s21_grep.c >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -c grep s21_grep.c >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST6" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST6" >> log_fail.txt
    (( FAIL++ ))
fi

TEST7="-l grep s21_grep.c s21_grep.h"
(( TEST_NUM++ ))
echo "${TEST7}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST7}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -l grep s21_grep.c s21_grep.h >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -l grep s21_grep.c s21_grep.h >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST7" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST7" >> log_fail.txt
    (( FAIL++ ))
fi

TEST8="-n grep s21_grep.c s21_grep.h"
(( TEST_NUM++ ))
echo "${TEST8}" > "${TEST_PATH}o_grep${TEST_NUM}.txt"
echo "${TEST8}" > "${TEST_PATH}s21_grep${TEST_NUM}.txt"
grep -n grep s21_grep.c s21_grep.h >> "${TEST_PATH}o_grep${TEST_NUM}.txt"
./s21_grep -n grep s21_grep.c s21_grep.h >> "${TEST_PATH}s21_grep${TEST_NUM}.txt"
DIFF_REZ="$(diff -s "${TEST_PATH}s21_grep${TEST_NUM}.txt" "${TEST_PATH}o_grep${TEST_NUM}.txt")"
if [ "$DIFF_REZ" == "Files ${TEST_PATH}s21_grep${TEST_NUM}.txt and ${TEST_PATH}o_grep${TEST_NUM}.txt are identical" ]
  then
    echo "$TEST8" >> log_success.txt
    (( SUCCESS++ ))
  else
    echo "$TEST8" >> log_fail.txt
    (( FAIL++ ))
fi

if [ $1 == rm ]; then
  rm -rf $TEST_PATH;
fi

echo "SUCCESS: $SUCCESS"
echo "FAIL: $FAIL"

echo "test2_grep ends"