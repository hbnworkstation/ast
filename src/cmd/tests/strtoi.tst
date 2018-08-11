# regression tests for the ast integral strto*() and strnto*() routines

case $($MAIN) in 64/64)

TEST 01 'base 10'

	EXEC	0 -0 +0 00 -00 +00
		OUTPUT - $'strtol    "0" "" 0 OK
strton    "0" "" 0 OK 0
strtoul   "0" "" 0 OK
strtoll   "0" "" 0 OK
strtonll  "0" "" 0 OK 0
strtoull  "0" "" 0 OK
strntol     1 "0" "" 0 OK
strntol     0 "0" "0" 0 OK
strnton     1 "0" "" 0 OK 0
strnton     0 "0" "0" 0 OK 0
strntoll    1 "0" "" 0 OK
strntoll    0 "0" "0" 0 OK

strtol    "-0" "" 0 OK
strton    "-0" "" 0 OK 0
strtoul   "-0" "" 0 OK
strtoll   "-0" "" 0 OK
strtonll  "-0" "" 0 OK 0
strtoull  "-0" "" 0 OK
strntol     2 "-0" "" 0 OK
strntol     1 "-0" "-0" 0 OK
strnton     2 "-0" "" 0 OK 0
strnton     1 "-0" "-0" 0 OK 10
strntoll    2 "-0" "" 0 OK
strntoll    1 "-0" "-0" 0 OK

strtol    "+0" "" 0 OK
strton    "+0" "" 0 OK 0
strtoul   "+0" "" 0 OK
strtoll   "+0" "" 0 OK
strtonll  "+0" "" 0 OK 0
strtoull  "+0" "" 0 OK
strntol     2 "+0" "" 0 OK
strntol     1 "+0" "+0" 0 OK
strnton     2 "+0" "" 0 OK 0
strnton     1 "+0" "+0" 0 OK 10
strntoll    2 "+0" "" 0 OK
strntoll    1 "+0" "+0" 0 OK

strtol    "00" "" 0 OK
strton    "00" "" 0 OK 8
strtoul   "00" "" 0 OK
strtoll   "00" "" 0 OK
strtonll  "00" "" 0 OK 8
strtoull  "00" "" 0 OK
strntol     2 "00" "" 0 OK
strntol     1 "00" "0" 0 OK
strnton     2 "00" "" 0 OK 8
strnton     1 "00" "0" 0 OK 0
strntoll    2 "00" "" 0 OK
strntoll    1 "00" "0" 0 OK

strtol    "-00" "" 0 OK
strton    "-00" "" 0 OK 8
strtoul   "-00" "" 0 OK
strtoll   "-00" "" 0 OK
strtonll  "-00" "" 0 OK 8
strtoull  "-00" "" 0 OK
strntol     3 "-00" "" 0 OK
strntol     2 "-00" "0" 0 OK
strnton     3 "-00" "" 0 OK 8
strnton     2 "-00" "0" 0 OK 0
strntoll    3 "-00" "" 0 OK
strntoll    2 "-00" "0" 0 OK

strtol    "+00" "" 0 OK
strton    "+00" "" 0 OK 8
strtoul   "+00" "" 0 OK
strtoll   "+00" "" 0 OK
strtonll  "+00" "" 0 OK 8
strtoull  "+00" "" 0 OK
strntol     3 "+00" "" 0 OK
strntol     2 "+00" "0" 0 OK
strnton     3 "+00" "" 0 OK 8
strnton     2 "+00" "0" 0 OK 0
strntoll    3 "+00" "" 0 OK
strntoll    2 "+00" "0" 0 OK

	EXEC	32767 -32767 32768 -32768 32769 -32769
		OUTPUT - $'strtol    "32767" "" 32767 OK
strton    "32767" "" 32767 OK 0
strtoul   "32767" "" 32767 OK
strtoll   "32767" "" 32767 OK
strtonll  "32767" "" 32767 OK 0
strtoull  "32767" "" 32767 OK
strntol     5 "32767" "" 32767 OK
strntol     4 "32767" "7" 3276 OK
strnton     5 "32767" "" 32767 OK 0
strnton     4 "32767" "7" 3276 OK 0
strntoll    5 "32767" "" 32767 OK
strntoll    4 "32767" "7" 3276 OK

strtol    "-32767" "" -32767 OK
strton    "-32767" "" -32767 OK 0
strtoul   "-32767" "" 18446744073709518849 OK
strtoll   "-32767" "" -32767 OK
strtonll  "-32767" "" -32767 OK 0
strtoull  "-32767" "" 18446744073709518849 OK
strntol     6 "-32767" "" -32767 OK
strntol     5 "-32767" "7" -3276 OK
strnton     6 "-32767" "" -32767 OK 0
strnton     5 "-32767" "7" -3276 OK 0
strntoll    6 "-32767" "" -32767 OK
strntoll    5 "-32767" "7" -3276 OK

strtol    "32768" "" 32768 OK
strton    "32768" "" 32768 OK 0
strtoul   "32768" "" 32768 OK
strtoll   "32768" "" 32768 OK
strtonll  "32768" "" 32768 OK 0
strtoull  "32768" "" 32768 OK
strntol     5 "32768" "" 32768 OK
strntol     4 "32768" "8" 3276 OK
strnton     5 "32768" "" 32768 OK 0
strnton     4 "32768" "8" 3276 OK 0
strntoll    5 "32768" "" 32768 OK
strntoll    4 "32768" "8" 3276 OK

strtol    "-32768" "" -32768 OK
strton    "-32768" "" -32768 OK 0
strtoul   "-32768" "" 18446744073709518848 OK
strtoll   "-32768" "" -32768 OK
strtonll  "-32768" "" -32768 OK 0
strtoull  "-32768" "" 18446744073709518848 OK
strntol     6 "-32768" "" -32768 OK
strntol     5 "-32768" "8" -3276 OK
strnton     6 "-32768" "" -32768 OK 0
strnton     5 "-32768" "8" -3276 OK 0
strntoll    6 "-32768" "" -32768 OK
strntoll    5 "-32768" "8" -3276 OK

strtol    "32769" "" 32769 OK
strton    "32769" "" 32769 OK 0
strtoul   "32769" "" 32769 OK
strtoll   "32769" "" 32769 OK
strtonll  "32769" "" 32769 OK 0
strtoull  "32769" "" 32769 OK
strntol     5 "32769" "" 32769 OK
strntol     4 "32769" "9" 3276 OK
strnton     5 "32769" "" 32769 OK 0
strnton     4 "32769" "9" 3276 OK 0
strntoll    5 "32769" "" 32769 OK
strntoll    4 "32769" "9" 3276 OK

strtol    "-32769" "" -32769 OK
strton    "-32769" "" -32769 OK 0
strtoul   "-32769" "" 18446744073709518847 OK
strtoll   "-32769" "" -32769 OK
strtonll  "-32769" "" -32769 OK 0
strtoull  "-32769" "" 18446744073709518847 OK
strntol     6 "-32769" "" -32769 OK
strntol     5 "-32769" "9" -3276 OK
strnton     6 "-32769" "" -32769 OK 0
strnton     5 "-32769" "9" -3276 OK 0
strntoll    6 "-32769" "" -32769 OK
strntoll    5 "-32769" "9" -3276 OK

	EXEC	65535 -65535 65536 -65536 65537 -65537
		OUTPUT - $'strtol    "65535" "" 65535 OK
strton    "65535" "" 65535 OK 0
strtoul   "65535" "" 65535 OK
strtoll   "65535" "" 65535 OK
strtonll  "65535" "" 65535 OK 0
strtoull  "65535" "" 65535 OK
strntol     5 "65535" "" 65535 OK
strntol     4 "65535" "5" 6553 OK
strnton     5 "65535" "" 65535 OK 0
strnton     4 "65535" "5" 6553 OK 0
strntoll    5 "65535" "" 65535 OK
strntoll    4 "65535" "5" 6553 OK

strtol    "-65535" "" -65535 OK
strton    "-65535" "" -65535 OK 0
strtoul   "-65535" "" 18446744073709486081 OK
strtoll   "-65535" "" -65535 OK
strtonll  "-65535" "" -65535 OK 0
strtoull  "-65535" "" 18446744073709486081 OK
strntol     6 "-65535" "" -65535 OK
strntol     5 "-65535" "5" -6553 OK
strnton     6 "-65535" "" -65535 OK 0
strnton     5 "-65535" "5" -6553 OK 0
strntoll    6 "-65535" "" -65535 OK
strntoll    5 "-65535" "5" -6553 OK

strtol    "65536" "" 65536 OK
strton    "65536" "" 65536 OK 0
strtoul   "65536" "" 65536 OK
strtoll   "65536" "" 65536 OK
strtonll  "65536" "" 65536 OK 0
strtoull  "65536" "" 65536 OK
strntol     5 "65536" "" 65536 OK
strntol     4 "65536" "6" 6553 OK
strnton     5 "65536" "" 65536 OK 0
strnton     4 "65536" "6" 6553 OK 0
strntoll    5 "65536" "" 65536 OK
strntoll    4 "65536" "6" 6553 OK

strtol    "-65536" "" -65536 OK
strton    "-65536" "" -65536 OK 0
strtoul   "-65536" "" 18446744073709486080 OK
strtoll   "-65536" "" -65536 OK
strtonll  "-65536" "" -65536 OK 0
strtoull  "-65536" "" 18446744073709486080 OK
strntol     6 "-65536" "" -65536 OK
strntol     5 "-65536" "6" -6553 OK
strnton     6 "-65536" "" -65536 OK 0
strnton     5 "-65536" "6" -6553 OK 0
strntoll    6 "-65536" "" -65536 OK
strntoll    5 "-65536" "6" -6553 OK

strtol    "65537" "" 65537 OK
strton    "65537" "" 65537 OK 0
strtoul   "65537" "" 65537 OK
strtoll   "65537" "" 65537 OK
strtonll  "65537" "" 65537 OK 0
strtoull  "65537" "" 65537 OK
strntol     5 "65537" "" 65537 OK
strntol     4 "65537" "7" 6553 OK
strnton     5 "65537" "" 65537 OK 0
strnton     4 "65537" "7" 6553 OK 0
strntoll    5 "65537" "" 65537 OK
strntoll    4 "65537" "7" 6553 OK

strtol    "-65537" "" -65537 OK
strton    "-65537" "" -65537 OK 0
strtoul   "-65537" "" 18446744073709486079 OK
strtoll   "-65537" "" -65537 OK
strtonll  "-65537" "" -65537 OK 0
strtoull  "-65537" "" 18446744073709486079 OK
strntol     6 "-65537" "" -65537 OK
strntol     5 "-65537" "7" -6553 OK
strnton     6 "-65537" "" -65537 OK 0
strnton     5 "-65537" "7" -6553 OK 0
strntoll    6 "-65537" "" -65537 OK
strntoll    5 "-65537" "7" -6553 OK

	EXEC	2147483647 -2147483647 2147483648 -2147483648 2147483649 -2147483649
		OUTPUT - $'strtol    "2147483647" "" 2147483647 OK
strton    "2147483647" "" 2147483647 OK 0
strtoul   "2147483647" "" 2147483647 OK
strtoll   "2147483647" "" 2147483647 OK
strtonll  "2147483647" "" 2147483647 OK 0
strtoull  "2147483647" "" 2147483647 OK
strntol    10 "2147483647" "" 2147483647 OK
strntol     9 "2147483647" "7" 214748364 OK
strnton    10 "2147483647" "" 2147483647 OK 0
strnton     9 "2147483647" "7" 214748364 OK 0
strntoll   10 "2147483647" "" 2147483647 OK
strntoll    9 "2147483647" "7" 214748364 OK

strtol    "-2147483647" "" -2147483647 OK
strton    "-2147483647" "" -2147483647 OK 0
strtoul   "-2147483647" "" 18446744071562067969 OK
strtoll   "-2147483647" "" -2147483647 OK
strtonll  "-2147483647" "" -2147483647 OK 0
strtoull  "-2147483647" "" 18446744071562067969 OK
strntol    11 "-2147483647" "" -2147483647 OK
strntol    10 "-2147483647" "7" -214748364 OK
strnton    11 "-2147483647" "" -2147483647 OK 0
strnton    10 "-2147483647" "7" -214748364 OK 0
strntoll   11 "-2147483647" "" -2147483647 OK
strntoll   10 "-2147483647" "7" -214748364 OK

strtol    "2147483648" "" 2147483648 OK
strton    "2147483648" "" 2147483648 OK 0
strtoul   "2147483648" "" 2147483648 OK
strtoll   "2147483648" "" 2147483648 OK
strtonll  "2147483648" "" 2147483648 OK 0
strtoull  "2147483648" "" 2147483648 OK
strntol    10 "2147483648" "" 2147483648 OK
strntol     9 "2147483648" "8" 214748364 OK
strnton    10 "2147483648" "" 2147483648 OK 0
strnton     9 "2147483648" "8" 214748364 OK 0
strntoll   10 "2147483648" "" 2147483648 OK
strntoll    9 "2147483648" "8" 214748364 OK

strtol    "-2147483648" "" -2147483648 OK
strton    "-2147483648" "" -2147483648 OK 0
strtoul   "-2147483648" "" 18446744071562067968 OK
strtoll   "-2147483648" "" -2147483648 OK
strtonll  "-2147483648" "" -2147483648 OK 0
strtoull  "-2147483648" "" 18446744071562067968 OK
strntol    11 "-2147483648" "" -2147483648 OK
strntol    10 "-2147483648" "8" -214748364 OK
strnton    11 "-2147483648" "" -2147483648 OK 0
strnton    10 "-2147483648" "8" -214748364 OK 0
strntoll   11 "-2147483648" "" -2147483648 OK
strntoll   10 "-2147483648" "8" -214748364 OK

strtol    "2147483649" "" 2147483649 OK
strton    "2147483649" "" 2147483649 OK 0
strtoul   "2147483649" "" 2147483649 OK
strtoll   "2147483649" "" 2147483649 OK
strtonll  "2147483649" "" 2147483649 OK 0
strtoull  "2147483649" "" 2147483649 OK
strntol    10 "2147483649" "" 2147483649 OK
strntol     9 "2147483649" "9" 214748364 OK
strnton    10 "2147483649" "" 2147483649 OK 0
strnton     9 "2147483649" "9" 214748364 OK 0
strntoll   10 "2147483649" "" 2147483649 OK
strntoll    9 "2147483649" "9" 214748364 OK

strtol    "-2147483649" "" -2147483649 OK
strton    "-2147483649" "" -2147483649 OK 0
strtoul   "-2147483649" "" 18446744071562067967 OK
strtoll   "-2147483649" "" -2147483649 OK
strtonll  "-2147483649" "" -2147483649 OK 0
strtoull  "-2147483649" "" 18446744071562067967 OK
strntol    11 "-2147483649" "" -2147483649 OK
strntol    10 "-2147483649" "9" -214748364 OK
strnton    11 "-2147483649" "" -2147483649 OK 0
strnton    10 "-2147483649" "9" -214748364 OK 0
strntoll   11 "-2147483649" "" -2147483649 OK
strntoll   10 "-2147483649" "9" -214748364 OK

	EXEC	4294967295 -4294967295 4294967296 -4294967296 4294967297 -4294967297
		OUTPUT - $'strtol    "4294967295" "" 4294967295 OK
strton    "4294967295" "" 4294967295 OK 0
strtoul   "4294967295" "" 4294967295 OK
strtoll   "4294967295" "" 4294967295 OK
strtonll  "4294967295" "" 4294967295 OK 0
strtoull  "4294967295" "" 4294967295 OK
strntol    10 "4294967295" "" 4294967295 OK
strntol     9 "4294967295" "5" 429496729 OK
strnton    10 "4294967295" "" 4294967295 OK 0
strnton     9 "4294967295" "5" 429496729 OK 0
strntoll   10 "4294967295" "" 4294967295 OK
strntoll    9 "4294967295" "5" 429496729 OK

strtol    "-4294967295" "" -4294967295 OK
strton    "-4294967295" "" -4294967295 OK 0
strtoul   "-4294967295" "" 18446744069414584321 OK
strtoll   "-4294967295" "" -4294967295 OK
strtonll  "-4294967295" "" -4294967295 OK 0
strtoull  "-4294967295" "" 18446744069414584321 OK
strntol    11 "-4294967295" "" -4294967295 OK
strntol    10 "-4294967295" "5" -429496729 OK
strnton    11 "-4294967295" "" -4294967295 OK 0
strnton    10 "-4294967295" "5" -429496729 OK 0
strntoll   11 "-4294967295" "" -4294967295 OK
strntoll   10 "-4294967295" "5" -429496729 OK

strtol    "4294967296" "" 4294967296 OK
strton    "4294967296" "" 4294967296 OK 0
strtoul   "4294967296" "" 4294967296 OK
strtoll   "4294967296" "" 4294967296 OK
strtonll  "4294967296" "" 4294967296 OK 0
strtoull  "4294967296" "" 4294967296 OK
strntol    10 "4294967296" "" 4294967296 OK
strntol     9 "4294967296" "6" 429496729 OK
strnton    10 "4294967296" "" 4294967296 OK 0
strnton     9 "4294967296" "6" 429496729 OK 0
strntoll   10 "4294967296" "" 4294967296 OK
strntoll    9 "4294967296" "6" 429496729 OK

strtol    "-4294967296" "" -4294967296 OK
strton    "-4294967296" "" -4294967296 OK 0
strtoul   "-4294967296" "" 18446744069414584320 OK
strtoll   "-4294967296" "" -4294967296 OK
strtonll  "-4294967296" "" -4294967296 OK 0
strtoull  "-4294967296" "" 18446744069414584320 OK
strntol    11 "-4294967296" "" -4294967296 OK
strntol    10 "-4294967296" "6" -429496729 OK
strnton    11 "-4294967296" "" -4294967296 OK 0
strnton    10 "-4294967296" "6" -429496729 OK 0
strntoll   11 "-4294967296" "" -4294967296 OK
strntoll   10 "-4294967296" "6" -429496729 OK

strtol    "4294967297" "" 4294967297 OK
strton    "4294967297" "" 4294967297 OK 0
strtoul   "4294967297" "" 4294967297 OK
strtoll   "4294967297" "" 4294967297 OK
strtonll  "4294967297" "" 4294967297 OK 0
strtoull  "4294967297" "" 4294967297 OK
strntol    10 "4294967297" "" 4294967297 OK
strntol     9 "4294967297" "7" 429496729 OK
strnton    10 "4294967297" "" 4294967297 OK 0
strnton     9 "4294967297" "7" 429496729 OK 0
strntoll   10 "4294967297" "" 4294967297 OK
strntoll    9 "4294967297" "7" 429496729 OK

strtol    "-4294967297" "" -4294967297 OK
strton    "-4294967297" "" -4294967297 OK 0
strtoul   "-4294967297" "" 18446744069414584319 OK
strtoll   "-4294967297" "" -4294967297 OK
strtonll  "-4294967297" "" -4294967297 OK 0
strtoull  "-4294967297" "" 18446744069414584319 OK
strntol    11 "-4294967297" "" -4294967297 OK
strntol    10 "-4294967297" "7" -429496729 OK
strnton    11 "-4294967297" "" -4294967297 OK 0
strnton    10 "-4294967297" "7" -429496729 OK 0
strntoll   11 "-4294967297" "" -4294967297 OK
strntoll   10 "-4294967297" "7" -429496729 OK

	EXEC	9223372036854775807 -9223372036854775807 9223372036854775808 -9223372036854775808 9223372036854775809 -9223372036854775809
		OUTPUT - $'strtol    "9223372036854775807" "" 9223372036854775807 OK
strton    "9223372036854775807" "" 9223372036854775807 OK 0
strtoul   "9223372036854775807" "" 9223372036854775807 OK
strtoll   "9223372036854775807" "" 9223372036854775807 OK
strtonll  "9223372036854775807" "" 9223372036854775807 OK 0
strtoull  "9223372036854775807" "" 9223372036854775807 OK
strntol    19 "9223372036854775807" "" 9223372036854775807 OK
strntol    18 "9223372036854775807" "7" 922337203685477580 OK
strnton    19 "9223372036854775807" "" 9223372036854775807 OK 0
strnton    18 "9223372036854775807" "7" 922337203685477580 OK 0
strntoll   19 "9223372036854775807" "" 9223372036854775807 OK
strntoll   18 "9223372036854775807" "7" 922337203685477580 OK

strtol    "-9223372036854775807" "" -9223372036854775807 OK
strton    "-9223372036854775807" "" -9223372036854775807 OK 0
strtoul   "-9223372036854775807" "" 9223372036854775809 OK
strtoll   "-9223372036854775807" "" -9223372036854775807 OK
strtonll  "-9223372036854775807" "" -9223372036854775807 OK 0
strtoull  "-9223372036854775807" "" 9223372036854775809 OK
strntol    20 "-9223372036854775807" "" -9223372036854775807 OK
strntol    19 "-9223372036854775807" "7" -922337203685477580 OK
strnton    20 "-9223372036854775807" "" -9223372036854775807 OK 0
strnton    19 "-9223372036854775807" "7" -922337203685477580 OK 0
strntoll   20 "-9223372036854775807" "" -9223372036854775807 OK
strntoll   19 "-9223372036854775807" "7" -922337203685477580 OK

strtol    "9223372036854775808" "" 9223372036854775807 ERANGE
strton    "9223372036854775808" "" 9223372036854775807 ERANGE 0
strtoul   "9223372036854775808" "" 9223372036854775808 OK
strtoll   "9223372036854775808" "" 9223372036854775807 ERANGE
strtonll  "9223372036854775808" "" 9223372036854775807 ERANGE 0
strtoull  "9223372036854775808" "" 9223372036854775808 OK
strntol    19 "9223372036854775808" "" 9223372036854775807 ERANGE
strntol    18 "9223372036854775808" "8" 922337203685477580 OK
strnton    19 "9223372036854775808" "" 9223372036854775807 ERANGE 0
strnton    18 "9223372036854775808" "8" 922337203685477580 OK 0
strntoll   19 "9223372036854775808" "" 9223372036854775807 ERANGE
strntoll   18 "9223372036854775808" "8" 922337203685477580 OK

strtol    "-9223372036854775808" "" -9223372036854775808 OK
strton    "-9223372036854775808" "" -9223372036854775808 OK 0
strtoul   "-9223372036854775808" "" 9223372036854775808 OK
strtoll   "-9223372036854775808" "" -9223372036854775808 OK
strtonll  "-9223372036854775808" "" -9223372036854775808 OK 0
strtoull  "-9223372036854775808" "" 9223372036854775808 OK
strntol    20 "-9223372036854775808" "" -9223372036854775808 OK
strntol    19 "-9223372036854775808" "8" -922337203685477580 OK
strnton    20 "-9223372036854775808" "" -9223372036854775808 OK 0
strnton    19 "-9223372036854775808" "8" -922337203685477580 OK 0
strntoll   20 "-9223372036854775808" "" -9223372036854775808 OK
strntoll   19 "-9223372036854775808" "8" -922337203685477580 OK

strtol    "9223372036854775809" "" 9223372036854775807 ERANGE
strton    "9223372036854775809" "" 9223372036854775807 ERANGE 0
strtoul   "9223372036854775809" "" 9223372036854775809 OK
strtoll   "9223372036854775809" "" 9223372036854775807 ERANGE
strtonll  "9223372036854775809" "" 9223372036854775807 ERANGE 0
strtoull  "9223372036854775809" "" 9223372036854775809 OK
strntol    19 "9223372036854775809" "" 9223372036854775807 ERANGE
strntol    18 "9223372036854775809" "9" 922337203685477580 OK
strnton    19 "9223372036854775809" "" 9223372036854775807 ERANGE 0
strnton    18 "9223372036854775809" "9" 922337203685477580 OK 0
strntoll   19 "9223372036854775809" "" 9223372036854775807 ERANGE
strntoll   18 "9223372036854775809" "9" 922337203685477580 OK

strtol    "-9223372036854775809" "" -9223372036854775808 ERANGE
strton    "-9223372036854775809" "" -9223372036854775808 ERANGE 0
strtoul   "-9223372036854775809" "" 9223372036854775807 OK
strtoll   "-9223372036854775809" "" -9223372036854775808 ERANGE
strtonll  "-9223372036854775809" "" -9223372036854775808 ERANGE 0
strtoull  "-9223372036854775809" "" 9223372036854775807 OK
strntol    20 "-9223372036854775809" "" -9223372036854775808 ERANGE
strntol    19 "-9223372036854775809" "9" -922337203685477580 OK
strnton    20 "-9223372036854775809" "" -9223372036854775808 ERANGE 0
strnton    19 "-9223372036854775809" "9" -922337203685477580 OK 0
strntoll   20 "-9223372036854775809" "" -9223372036854775808 ERANGE
strntoll   19 "-9223372036854775809" "9" -922337203685477580 OK

	EXEC	18446744073709551615 -18446744073709551615 18446744073709551616 -18446744073709551616 18446744073709551617 -18446744073709551617
		OUTPUT - $'strtol    "18446744073709551615" "" 9223372036854775807 ERANGE
strton    "18446744073709551615" "" 9223372036854775807 ERANGE 0
strtoul   "18446744073709551615" "" 18446744073709551615 OK
strtoll   "18446744073709551615" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551615" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551615" "" 18446744073709551615 OK
strntol    20 "18446744073709551615" "" 9223372036854775807 ERANGE
strntol    19 "18446744073709551615" "5" 1844674407370955161 OK
strnton    20 "18446744073709551615" "" 9223372036854775807 ERANGE 0
strnton    19 "18446744073709551615" "5" 1844674407370955161 OK 0
strntoll   20 "18446744073709551615" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551615" "5" 1844674407370955161 OK

strtol    "-18446744073709551615" "" -9223372036854775808 ERANGE
strton    "-18446744073709551615" "" -9223372036854775808 ERANGE 0
strtoul   "-18446744073709551615" "" 18446744073709551615 ERANGE
strtoll   "-18446744073709551615" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551615" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551615" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551615" "" -9223372036854775808 ERANGE
strntol    20 "-18446744073709551615" "5" -1844674407370955161 OK
strnton    21 "-18446744073709551615" "" -9223372036854775808 ERANGE 0
strnton    20 "-18446744073709551615" "5" -1844674407370955161 OK 0
strntoll   21 "-18446744073709551615" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551615" "5" -1844674407370955161 OK

strtol    "18446744073709551616" "" 9223372036854775807 ERANGE
strton    "18446744073709551616" "" 9223372036854775807 ERANGE 0
strtoul   "18446744073709551616" "" 18446744073709551615 ERANGE
strtoll   "18446744073709551616" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551616" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551616" "" 18446744073709551615 ERANGE
strntol    20 "18446744073709551616" "" 9223372036854775807 ERANGE
strntol    19 "18446744073709551616" "6" 1844674407370955161 OK
strnton    20 "18446744073709551616" "" 9223372036854775807 ERANGE 0
strnton    19 "18446744073709551616" "6" 1844674407370955161 OK 0
strntoll   20 "18446744073709551616" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551616" "6" 1844674407370955161 OK

strtol    "-18446744073709551616" "" -9223372036854775808 ERANGE
strton    "-18446744073709551616" "" -9223372036854775808 ERANGE 0
strtoul   "-18446744073709551616" "" 18446744073709551615 ERANGE
strtoll   "-18446744073709551616" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551616" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551616" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551616" "" -9223372036854775808 ERANGE
strntol    20 "-18446744073709551616" "6" -1844674407370955161 OK
strnton    21 "-18446744073709551616" "" -9223372036854775808 ERANGE 0
strnton    20 "-18446744073709551616" "6" -1844674407370955161 OK 0
strntoll   21 "-18446744073709551616" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551616" "6" -1844674407370955161 OK

strtol    "18446744073709551617" "" 9223372036854775807 ERANGE
strton    "18446744073709551617" "" 9223372036854775807 ERANGE 0
strtoul   "18446744073709551617" "" 18446744073709551615 ERANGE
strtoll   "18446744073709551617" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551617" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551617" "" 18446744073709551615 ERANGE
strntol    20 "18446744073709551617" "" 9223372036854775807 ERANGE
strntol    19 "18446744073709551617" "7" 1844674407370955161 OK
strnton    20 "18446744073709551617" "" 9223372036854775807 ERANGE 0
strnton    19 "18446744073709551617" "7" 1844674407370955161 OK 0
strntoll   20 "18446744073709551617" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551617" "7" 1844674407370955161 OK

strtol    "-18446744073709551617" "" -9223372036854775808 ERANGE
strton    "-18446744073709551617" "" -9223372036854775808 ERANGE 0
strtoul   "-18446744073709551617" "" 18446744073709551615 ERANGE
strtoll   "-18446744073709551617" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551617" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551617" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551617" "" -9223372036854775808 ERANGE
strntol    20 "-18446744073709551617" "7" -1844674407370955161 OK
strnton    21 "-18446744073709551617" "" -9223372036854775808 ERANGE 0
strnton    20 "-18446744073709551617" "7" -1844674407370955161 OK 0
strntoll   21 "-18446744073709551617" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551617" "7" -1844674407370955161 OK

TEST 02 'hex'

	EXEC	0xffffffff0 0xfffffffff 0x17fffffff
		OUTPUT - $'strtol    "0xffffffff0" "" 68719476720 OK
strton    "0xffffffff0" "" 68719476720 OK 16
strtoul   "0xffffffff0" "" 68719476720 OK
strtoll   "0xffffffff0" "" 68719476720 OK
strtonll  "0xffffffff0" "" 68719476720 OK 16
strtoull  "0xffffffff0" "" 68719476720 OK
strntol    11 "0xffffffff0" "" 68719476720 OK
strntol    10 "0xffffffff0" "0" 4294967295 OK
strnton    11 "0xffffffff0" "" 68719476720 OK 16
strnton    10 "0xffffffff0" "0" 4294967295 OK 16
strntoll   11 "0xffffffff0" "" 68719476720 OK
strntoll   10 "0xffffffff0" "0" 4294967295 OK

strtol    "0xfffffffff" "" 68719476735 OK
strton    "0xfffffffff" "" 68719476735 OK 16
strtoul   "0xfffffffff" "" 68719476735 OK
strtoll   "0xfffffffff" "" 68719476735 OK
strtonll  "0xfffffffff" "" 68719476735 OK 16
strtoull  "0xfffffffff" "" 68719476735 OK
strntol    11 "0xfffffffff" "" 68719476735 OK
strntol    10 "0xfffffffff" "f" 4294967295 OK
strnton    11 "0xfffffffff" "" 68719476735 OK 16
strnton    10 "0xfffffffff" "f" 4294967295 OK 16
strntoll   11 "0xfffffffff" "" 68719476735 OK
strntoll   10 "0xfffffffff" "f" 4294967295 OK

strtol    "0x17fffffff" "" 6442450943 OK
strton    "0x17fffffff" "" 6442450943 OK 16
strtoul   "0x17fffffff" "" 6442450943 OK
strtoll   "0x17fffffff" "" 6442450943 OK
strtonll  "0x17fffffff" "" 6442450943 OK 16
strtoull  "0x17fffffff" "" 6442450943 OK
strntol    11 "0x17fffffff" "" 6442450943 OK
strntol    10 "0x17fffffff" "f" 402653183 OK
strnton    11 "0x17fffffff" "" 6442450943 OK 16
strnton    10 "0x17fffffff" "f" 402653183 OK 16
strntoll   11 "0x17fffffff" "" 6442450943 OK
strntoll   10 "0x17fffffff" "f" 402653183 OK

TEST 03 'thousands separator'

	EXEC	LC_ALL=debug 12345678 12.345.678 12.345678 12.345.67 1.234 123.456
		OUTPUT - $'strtol    "12345678" "" 12345678 OK
strton    "12345678" "" 12345678 OK 0
strtoul   "12345678" "" 12345678 OK
strtoll   "12345678" "" 12345678 OK
strtonll  "12345678" "" 12345678 OK 0
strtoull  "12345678" "" 12345678 OK
strntol     8 "12345678" "" 12345678 OK
strntol     7 "12345678" "8" 1234567 OK
strnton     8 "12345678" "" 12345678 OK 0
strnton     7 "12345678" "8" 1234567 OK 0
strntoll    8 "12345678" "" 12345678 OK
strntoll    7 "12345678" "8" 1234567 OK

strtol    "12.345.678" "" 12345678 OK
strton    "12.345.678" "" 12345678 OK 0
strtoul   "12.345.678" "" 12345678 OK
strtoll   "12.345.678" "" 12345678 OK
strtonll  "12.345.678" "" 12345678 OK 0
strtoull  "12.345.678" "" 12345678 OK
strntol    10 "12.345.678" "" 12345678 OK
strntol     9 "12.345.678" ".678" 12345 OK
strnton    10 "12.345.678" "" 12345678 OK 0
strnton     9 "12.345.678" ".678" 12345 OK 0
strntoll   10 "12.345.678" "" 12345678 OK
strntoll    9 "12.345.678" ".678" 12345 OK

strtol    "12.345678" ".345678" 12 OK
strton    "12.345678" ".345678" 12 OK 0
strtoul   "12.345678" ".345678" 12 OK
strtoll   "12.345678" ".345678" 12 OK
strtonll  "12.345678" ".345678" 12 OK 0
strtoull  "12.345678" ".345678" 12 OK
strntol     9 "12.345678" ".345678" 12 OK
strntol     8 "12.345678" ".345678" 12 OK
strnton     9 "12.345678" ".345678" 12 OK 0
strnton     8 "12.345678" ".345678" 12 OK 0
strntoll    9 "12.345678" ".345678" 12 OK
strntoll    8 "12.345678" ".345678" 12 OK

strtol    "12.345.67" ".67" 12345 OK
strton    "12.345.67" ".67" 12345 OK 0
strtoul   "12.345.67" ".67" 12345 OK
strtoll   "12.345.67" ".67" 12345 OK
strtonll  "12.345.67" ".67" 12345 OK 0
strtoull  "12.345.67" ".67" 12345 OK
strntol     9 "12.345.67" ".67" 12345 OK
strntol     8 "12.345.67" ".67" 12345 OK
strnton     9 "12.345.67" ".67" 12345 OK 0
strnton     8 "12.345.67" ".67" 12345 OK 0
strntoll    9 "12.345.67" ".67" 12345 OK
strntoll    8 "12.345.67" ".67" 12345 OK

strtol    "1.234" "" 1234 OK
strton    "1.234" "" 1234 OK 0
strtoul   "1.234" "" 1234 OK
strtoll   "1.234" "" 1234 OK
strtonll  "1.234" "" 1234 OK 0
strtoull  "1.234" "" 1234 OK
strntol     5 "1.234" "" 1234 OK
strntol     4 "1.234" ".234" 1 OK
strnton     5 "1.234" "" 1234 OK 0
strnton     4 "1.234" ".234" 1 OK 0
strntoll    5 "1.234" "" 1234 OK
strntoll    4 "1.234" ".234" 1 OK

strtol    "123.456" "" 123456 OK
strton    "123.456" "" 123456 OK 0
strtoul   "123.456" "" 123456 OK
strtoll   "123.456" "" 123456 OK
strtonll  "123.456" "" 123456 OK 0
strtoull  "123.456" "" 123456 OK
strntol     7 "123.456" "" 123456 OK
strntol     6 "123.456" ".456" 123 OK
strnton     7 "123.456" "" 123456 OK 0
strnton     6 "123.456" ".456" 123 OK 0
strntoll    7 "123.456" "" 123456 OK
strntoll    6 "123.456" ".456" 123 OK

TEST 04 'malformations'

	EXEC - + 0x -0x +0x 11# -11# +11# 11#A 11#B
		OUTPUT - $'strtol    "-" "-" 0 OK
strton    "-" "-" 0 OK 10
strtoul   "-" "-" 0 OK
strtoll   "-" "-" 0 OK
strtonll  "-" "-" 0 OK 10
strtoull  "-" "-" 0 OK
strntol     1 "-" "-" 0 OK
strntol     0 "-" "-" 0 OK
strnton     1 "-" "-" 0 OK 10
strnton     0 "-" "-" 0 OK 0
strntoll    1 "-" "-" 0 OK
strntoll    0 "-" "-" 0 OK

strtol    "+" "+" 0 OK
strton    "+" "+" 0 OK 10
strtoul   "+" "+" 0 OK
strtoll   "+" "+" 0 OK
strtonll  "+" "+" 0 OK 10
strtoull  "+" "+" 0 OK
strntol     1 "+" "+" 0 OK
strntol     0 "+" "+" 0 OK
strnton     1 "+" "+" 0 OK 10
strnton     0 "+" "+" 0 OK 0
strntoll    1 "+" "+" 0 OK
strntoll    0 "+" "+" 0 OK

strtol    "0x" "x" 0 OK
strton    "0x" "x" 0 OK 10
strtoul   "0x" "x" 0 OK
strtoll   "0x" "x" 0 OK
strtonll  "0x" "x" 0 OK 10
strtoull  "0x" "x" 0 OK
strntol     2 "0x" "x" 0 OK
strntol     1 "0x" "x" 0 OK
strnton     2 "0x" "x" 0 OK 10
strnton     1 "0x" "x" 0 OK 0
strntoll    2 "0x" "x" 0 OK
strntoll    1 "0x" "x" 0 OK

strtol    "-0x" "x" 0 OK
strton    "-0x" "x" 0 OK 10
strtoul   "-0x" "x" 0 OK
strtoll   "-0x" "x" 0 OK
strtonll  "-0x" "x" 0 OK 10
strtoull  "-0x" "x" 0 OK
strntol     3 "-0x" "x" 0 OK
strntol     2 "-0x" "x" 0 OK
strnton     3 "-0x" "x" 0 OK 10
strnton     2 "-0x" "x" 0 OK 0
strntoll    3 "-0x" "x" 0 OK
strntoll    2 "-0x" "x" 0 OK

strtol    "+0x" "x" 0 OK
strton    "+0x" "x" 0 OK 10
strtoul   "+0x" "x" 0 OK
strtoll   "+0x" "x" 0 OK
strtonll  "+0x" "x" 0 OK 10
strtoull  "+0x" "x" 0 OK
strntol     3 "+0x" "x" 0 OK
strntol     2 "+0x" "x" 0 OK
strnton     3 "+0x" "x" 0 OK 10
strnton     2 "+0x" "x" 0 OK 0
strntoll    3 "+0x" "x" 0 OK
strntoll    2 "+0x" "x" 0 OK

strtol    "11#" "#" 0 OK
strton    "11#" "#" 0 OK 10
strtoul   "11#" "#" 0 OK
strtoll   "11#" "#" 0 OK
strtonll  "11#" "#" 0 OK 10
strtoull  "11#" "#" 0 OK
strntol     3 "11#" "#" 0 OK
strntol     2 "11#" "#" 11 OK
strnton     3 "11#" "#" 0 OK 10
strnton     2 "11#" "#" 11 OK 0
strntoll    3 "11#" "#" 0 OK
strntoll    2 "11#" "#" 11 OK

strtol    "-11#" "#" 0 OK
strton    "-11#" "#" 0 OK 10
strtoul   "-11#" "#" 0 OK
strtoll   "-11#" "#" 0 OK
strtonll  "-11#" "#" 0 OK 10
strtoull  "-11#" "#" 0 OK
strntol     4 "-11#" "#" 0 OK
strntol     3 "-11#" "#" -11 OK
strnton     4 "-11#" "#" 0 OK 10
strnton     3 "-11#" "#" -11 OK 0
strntoll    4 "-11#" "#" 0 OK
strntoll    3 "-11#" "#" -11 OK

strtol    "+11#" "#" 0 OK
strton    "+11#" "#" 0 OK 10
strtoul   "+11#" "#" 0 OK
strtoll   "+11#" "#" 0 OK
strtonll  "+11#" "#" 0 OK 10
strtoull  "+11#" "#" 0 OK
strntol     4 "+11#" "#" 0 OK
strntol     3 "+11#" "#" 11 OK
strnton     4 "+11#" "#" 0 OK 10
strnton     3 "+11#" "#" 11 OK 0
strntoll    4 "+11#" "#" 0 OK
strntoll    3 "+11#" "#" 11 OK

strtol    "11#A" "" 10 OK
strton    "11#A" "" 10 OK 11
strtoul   "11#A" "" 10 OK
strtoll   "11#A" "" 10 OK
strtonll  "11#A" "" 10 OK 11
strtoull  "11#A" "" 10 OK
strntol     4 "11#A" "" 10 OK
strntol     3 "11#A" "#A" 0 OK
strnton     4 "11#A" "" 10 OK 11
strnton     3 "11#A" "#A" 0 OK 10
strntoll    4 "11#A" "" 10 OK
strntoll    3 "11#A" "#A" 0 OK

strtol    "11#B" "#B" 0 OK
strton    "11#B" "#B" 0 OK 10
strtoul   "11#B" "#B" 0 OK
strtoll   "11#B" "#B" 0 OK
strtonll  "11#B" "#B" 0 OK 10
strtoull  "11#B" "#B" 0 OK
strntol     4 "11#B" "" 0 OK
strntol     3 "11#B" "#B" 0 OK
strnton     4 "11#B" "" 0 OK 11
strnton     3 "11#B" "#B" 0 OK 10
strntoll    4 "11#B" "" 0 OK
strntoll    3 "11#B" "#B" 0 OK

TEST 05 'multiplier suffixes'

	EXEC 1b 1k 1m 1g 1t 1p 1e 1. 1.2 1.23 1.234 1.k 1.2k 1.23k 1.234k
		OUTPUT - $'strtol    "1b" "b" 1 OK
strton    "1b" "" 512 OK 0
strtoul   "1b" "b" 1 OK
strtoll   "1b" "b" 1 OK
strtonll  "1b" "" 512 OK 0
strtoull  "1b" "b" 1 OK
strntol     2 "1b" "" 1 OK
strntol     1 "1b" "b" 1 OK
strnton     2 "1b" "" 1 OK 0
strnton     1 "1b" "b" 1 OK 0
strntoll    2 "1b" "" 1 OK
strntoll    1 "1b" "b" 1 OK

strtol    "1k" "k" 1 OK
strton    "1k" "" 1000 OK 0
strtoul   "1k" "k" 1 OK
strtoll   "1k" "k" 1 OK
strtonll  "1k" "" 1000 OK 0
strtoull  "1k" "k" 1 OK
strntol     2 "1k" "" 1 OK
strntol     1 "1k" "k" 1 OK
strnton     2 "1k" "" 1 OK 0
strnton     1 "1k" "k" 1 OK 0
strntoll    2 "1k" "" 1 OK
strntoll    1 "1k" "k" 1 OK

strtol    "1m" "m" 1 OK
strton    "1m" "" 1000000 OK 0
strtoul   "1m" "m" 1 OK
strtoll   "1m" "m" 1 OK
strtonll  "1m" "" 1000000 OK 0
strtoull  "1m" "m" 1 OK
strntol     2 "1m" "" 1 OK
strntol     1 "1m" "m" 1 OK
strnton     2 "1m" "" 1 OK 0
strnton     1 "1m" "m" 1 OK 0
strntoll    2 "1m" "" 1 OK
strntoll    1 "1m" "m" 1 OK

strtol    "1g" "g" 1 OK
strton    "1g" "" 1000000000 OK 0
strtoul   "1g" "g" 1 OK
strtoll   "1g" "g" 1 OK
strtonll  "1g" "" 1000000000 OK 0
strtoull  "1g" "g" 1 OK
strntol     2 "1g" "" 1 OK
strntol     1 "1g" "g" 1 OK
strnton     2 "1g" "" 1 OK 0
strnton     1 "1g" "g" 1 OK 0
strntoll    2 "1g" "" 1 OK
strntoll    1 "1g" "g" 1 OK

strtol    "1t" "t" 1 OK
strton    "1t" "" 1000000000000 OK 0
strtoul   "1t" "t" 1 OK
strtoll   "1t" "t" 1 OK
strtonll  "1t" "" 1000000000000 OK 0
strtoull  "1t" "t" 1 OK
strntol     2 "1t" "" 1 OK
strntol     1 "1t" "t" 1 OK
strnton     2 "1t" "" 1 OK 0
strnton     1 "1t" "t" 1 OK 0
strntoll    2 "1t" "" 1 OK
strntoll    1 "1t" "t" 1 OK

strtol    "1p" "p" 1 OK
strton    "1p" "" 1000000000000000 OK 0
strtoul   "1p" "p" 1 OK
strtoll   "1p" "p" 1 OK
strtonll  "1p" "" 1000000000000000 OK 0
strtoull  "1p" "p" 1 OK
strntol     2 "1p" "" 1 OK
strntol     1 "1p" "p" 1 OK
strnton     2 "1p" "" 1 OK 0
strnton     1 "1p" "p" 1 OK 0
strntoll    2 "1p" "" 1 OK
strntoll    1 "1p" "p" 1 OK

strtol    "1e" "e" 1 OK
strton    "1e" "" 1000000000000000000 OK 0
strtoul   "1e" "e" 1 OK
strtoll   "1e" "e" 1 OK
strtonll  "1e" "" 1000000000000000000 OK 0
strtoull  "1e" "e" 1 OK
strntol     2 "1e" "" 1 OK
strntol     1 "1e" "e" 1 OK
strnton     2 "1e" "" 1 OK 0
strnton     1 "1e" "e" 1 OK 0
strntoll    2 "1e" "" 1 OK
strntoll    1 "1e" "e" 1 OK

strtol    "1." "." 1 OK
strton    "1." "" 100 OK 0
strtoul   "1." "." 1 OK
strtoll   "1." "." 1 OK
strtonll  "1." "" 100 OK 0
strtoull  "1." "." 1 OK
strntol     2 "1." "" 1 OK
strntol     1 "1." "." 1 OK
strnton     2 "1." "" 1 OK 0
strnton     1 "1." "." 1 OK 0
strntoll    2 "1." "" 1 OK
strntoll    1 "1." "." 1 OK

strtol    "1.2" ".2" 1 OK
strton    "1.2" "" 120 OK 0
strtoul   "1.2" ".2" 1 OK
strtoll   "1.2" ".2" 1 OK
strtonll  "1.2" "" 120 OK 0
strtoull  "1.2" ".2" 1 OK
strntol     3 "1.2" ".2" 1 OK
strntol     2 "1.2" "2" 1 OK
strnton     3 "1.2" "2" 120 OK 0
strnton     2 "1.2" "2" 1 OK 0
strntoll    3 "1.2" ".2" 1 OK
strntoll    2 "1.2" "2" 1 OK

strtol    "1.23" ".23" 1 OK
strton    "1.23" "" 123 OK 0
strtoul   "1.23" ".23" 1 OK
strtoll   "1.23" ".23" 1 OK
strtonll  "1.23" "" 123 OK 0
strtoull  "1.23" ".23" 1 OK
strntol     4 "1.23" ".23" 1 OK
strntol     3 "1.23" ".23" 1 OK
strnton     4 "1.23" "3" 123 OK 0
strnton     3 "1.23" "23" 120 OK 0
strntoll    4 "1.23" ".23" 1 OK
strntoll    3 "1.23" ".23" 1 OK

strtol    "1.234" ".234" 1 OK
strton    "1.234" "" 123 OK 0
strtoul   "1.234" ".234" 1 OK
strtoll   "1.234" ".234" 1 OK
strtonll  "1.234" "" 123 OK 0
strtoull  "1.234" ".234" 1 OK
strntol     5 "1.234" ".234" 1 OK
strntol     4 "1.234" ".234" 1 OK
strnton     5 "1.234" "4" 123 OK 0
strnton     4 "1.234" "34" 123 OK 0
strntoll    5 "1.234" ".234" 1 OK
strntoll    4 "1.234" ".234" 1 OK

strtol    "1.k" ".k" 1 OK
strton    "1.k" "k" 100 OK 0
strtoul   "1.k" ".k" 1 OK
strtoll   "1.k" ".k" 1 OK
strtonll  "1.k" "k" 100 OK 0
strtoull  "1.k" ".k" 1 OK
strntol     3 "1.k" ".k" 1 OK
strntol     2 "1.k" "k" 1 OK
strnton     3 "1.k" "k" 100 OK 0
strnton     2 "1.k" "k" 1 OK 0
strntoll    3 "1.k" ".k" 1 OK
strntoll    2 "1.k" "k" 1 OK

strtol    "1.2k" ".2k" 1 OK
strton    "1.2k" "k" 120 OK 0
strtoul   "1.2k" ".2k" 1 OK
strtoll   "1.2k" ".2k" 1 OK
strtonll  "1.2k" "k" 120 OK 0
strtoull  "1.2k" ".2k" 1 OK
strntol     4 "1.2k" ".2k" 1 OK
strntol     3 "1.2k" ".2k" 1 OK
strnton     4 "1.2k" "k" 120 OK 0
strnton     3 "1.2k" "2k" 120 OK 0
strntoll    4 "1.2k" ".2k" 1 OK
strntoll    3 "1.2k" ".2k" 1 OK

strtol    "1.23k" ".23k" 1 OK
strton    "1.23k" "k" 123 OK 0
strtoul   "1.23k" ".23k" 1 OK
strtoll   "1.23k" ".23k" 1 OK
strtonll  "1.23k" "k" 123 OK 0
strtoull  "1.23k" ".23k" 1 OK
strntol     5 "1.23k" ".23k" 1 OK
strntol     4 "1.23k" ".23k" 1 OK
strnton     5 "1.23k" "k" 123 OK 0
strnton     4 "1.23k" "3k" 123 OK 0
strntoll    5 "1.23k" ".23k" 1 OK
strntoll    4 "1.23k" ".23k" 1 OK

strtol    "1.234k" ".234k" 1 OK
strton    "1.234k" "k" 123 OK 0
strtoul   "1.234k" ".234k" 1 OK
strtoll   "1.234k" ".234k" 1 OK
strtonll  "1.234k" "k" 123 OK 0
strtoull  "1.234k" ".234k" 1 OK
strntol     6 "1.234k" ".234k" 1 OK
strntol     5 "1.234k" ".234k" 1 OK
strnton     6 "1.234k" "k" 123 OK 0
strnton     5 "1.234k" "4k" 123 OK 0
strntoll    6 "1.234k" ".234k" 1 OK
strntoll    5 "1.234k" ".234k" 1 OK

	EXEC 1b 1ki 1mi 1gi 1ti 1pi 1ei 1. 1.2 1.23 1.234 1.ki 1.2ki 1.23ki 1.234ki
		OUTPUT - $'strtol    "1b" "b" 1 OK
strton    "1b" "" 512 OK 0
strtoul   "1b" "b" 1 OK
strtoll   "1b" "b" 1 OK
strtonll  "1b" "" 512 OK 0
strtoull  "1b" "b" 1 OK
strntol     2 "1b" "" 1 OK
strntol     1 "1b" "b" 1 OK
strnton     2 "1b" "" 1 OK 0
strnton     1 "1b" "b" 1 OK 0
strntoll    2 "1b" "" 1 OK
strntoll    1 "1b" "b" 1 OK

strtol    "1ki" "ki" 1 OK
strton    "1ki" "" 1024 OK 0
strtoul   "1ki" "ki" 1 OK
strtoll   "1ki" "ki" 1 OK
strtonll  "1ki" "" 1024 OK 0
strtoull  "1ki" "ki" 1 OK
strntol     3 "1ki" "ki" 1 OK
strntol     2 "1ki" "i" 1 OK
strnton     3 "1ki" "" 1024 OK 0
strnton     2 "1ki" "i" 1 OK 0
strntoll    3 "1ki" "ki" 1 OK
strntoll    2 "1ki" "i" 1 OK

strtol    "1mi" "mi" 1 OK
strton    "1mi" "" 1048576 OK 0
strtoul   "1mi" "mi" 1 OK
strtoll   "1mi" "mi" 1 OK
strtonll  "1mi" "" 1048576 OK 0
strtoull  "1mi" "mi" 1 OK
strntol     3 "1mi" "mi" 1 OK
strntol     2 "1mi" "i" 1 OK
strnton     3 "1mi" "" 1048576 OK 0
strnton     2 "1mi" "i" 1 OK 0
strntoll    3 "1mi" "mi" 1 OK
strntoll    2 "1mi" "i" 1 OK

strtol    "1gi" "gi" 1 OK
strton    "1gi" "" 1073741824 OK 0
strtoul   "1gi" "gi" 1 OK
strtoll   "1gi" "gi" 1 OK
strtonll  "1gi" "" 1073741824 OK 0
strtoull  "1gi" "gi" 1 OK
strntol     3 "1gi" "gi" 1 OK
strntol     2 "1gi" "i" 1 OK
strnton     3 "1gi" "" 1073741824 OK 0
strnton     2 "1gi" "i" 1 OK 0
strntoll    3 "1gi" "gi" 1 OK
strntoll    2 "1gi" "i" 1 OK

strtol    "1ti" "ti" 1 OK
strton    "1ti" "" 1099511627776 OK 0
strtoul   "1ti" "ti" 1 OK
strtoll   "1ti" "ti" 1 OK
strtonll  "1ti" "" 1099511627776 OK 0
strtoull  "1ti" "ti" 1 OK
strntol     3 "1ti" "ti" 1 OK
strntol     2 "1ti" "i" 1 OK
strnton     3 "1ti" "" 1099511627776 OK 0
strnton     2 "1ti" "i" 1 OK 0
strntoll    3 "1ti" "ti" 1 OK
strntoll    2 "1ti" "i" 1 OK

strtol    "1pi" "pi" 1 OK
strton    "1pi" "" 1125899906842624 OK 0
strtoul   "1pi" "pi" 1 OK
strtoll   "1pi" "pi" 1 OK
strtonll  "1pi" "" 1125899906842624 OK 0
strtoull  "1pi" "pi" 1 OK
strntol     3 "1pi" "pi" 1 OK
strntol     2 "1pi" "i" 1 OK
strnton     3 "1pi" "" 1125899906842624 OK 0
strnton     2 "1pi" "i" 1 OK 0
strntoll    3 "1pi" "pi" 1 OK
strntoll    2 "1pi" "i" 1 OK

strtol    "1ei" "ei" 1 OK
strton    "1ei" "" 1152921504606846976 OK 0
strtoul   "1ei" "ei" 1 OK
strtoll   "1ei" "ei" 1 OK
strtonll  "1ei" "" 1152921504606846976 OK 0
strtoull  "1ei" "ei" 1 OK
strntol     3 "1ei" "ei" 1 OK
strntol     2 "1ei" "i" 1 OK
strnton     3 "1ei" "" 1152921504606846976 OK 0
strnton     2 "1ei" "i" 1 OK 0
strntoll    3 "1ei" "ei" 1 OK
strntoll    2 "1ei" "i" 1 OK

strtol    "1." "." 1 OK
strton    "1." "" 100 OK 0
strtoul   "1." "." 1 OK
strtoll   "1." "." 1 OK
strtonll  "1." "" 100 OK 0
strtoull  "1." "." 1 OK
strntol     2 "1." "" 1 OK
strntol     1 "1." "." 1 OK
strnton     2 "1." "" 1 OK 0
strnton     1 "1." "." 1 OK 0
strntoll    2 "1." "" 1 OK
strntoll    1 "1." "." 1 OK

strtol    "1.2" ".2" 1 OK
strton    "1.2" "" 120 OK 0
strtoul   "1.2" ".2" 1 OK
strtoll   "1.2" ".2" 1 OK
strtonll  "1.2" "" 120 OK 0
strtoull  "1.2" ".2" 1 OK
strntol     3 "1.2" ".2" 1 OK
strntol     2 "1.2" "2" 1 OK
strnton     3 "1.2" "2" 120 OK 0
strnton     2 "1.2" "2" 1 OK 0
strntoll    3 "1.2" ".2" 1 OK
strntoll    2 "1.2" "2" 1 OK

strtol    "1.23" ".23" 1 OK
strton    "1.23" "" 123 OK 0
strtoul   "1.23" ".23" 1 OK
strtoll   "1.23" ".23" 1 OK
strtonll  "1.23" "" 123 OK 0
strtoull  "1.23" ".23" 1 OK
strntol     4 "1.23" ".23" 1 OK
strntol     3 "1.23" ".23" 1 OK
strnton     4 "1.23" "3" 123 OK 0
strnton     3 "1.23" "23" 120 OK 0
strntoll    4 "1.23" ".23" 1 OK
strntoll    3 "1.23" ".23" 1 OK

strtol    "1.234" ".234" 1 OK
strton    "1.234" "" 123 OK 0
strtoul   "1.234" ".234" 1 OK
strtoll   "1.234" ".234" 1 OK
strtonll  "1.234" "" 123 OK 0
strtoull  "1.234" ".234" 1 OK
strntol     5 "1.234" ".234" 1 OK
strntol     4 "1.234" ".234" 1 OK
strnton     5 "1.234" "4" 123 OK 0
strnton     4 "1.234" "34" 123 OK 0
strntoll    5 "1.234" ".234" 1 OK
strntoll    4 "1.234" ".234" 1 OK

strtol    "1.ki" ".ki" 1 OK
strton    "1.ki" "ki" 100 OK 0
strtoul   "1.ki" ".ki" 1 OK
strtoll   "1.ki" ".ki" 1 OK
strtonll  "1.ki" "ki" 100 OK 0
strtoull  "1.ki" ".ki" 1 OK
strntol     4 "1.ki" ".ki" 1 OK
strntol     3 "1.ki" ".ki" 1 OK
strnton     4 "1.ki" "ki" 100 OK 0
strnton     3 "1.ki" "ki" 100 OK 0
strntoll    4 "1.ki" ".ki" 1 OK
strntoll    3 "1.ki" ".ki" 1 OK

strtol    "1.2ki" ".2ki" 1 OK
strton    "1.2ki" "ki" 120 OK 0
strtoul   "1.2ki" ".2ki" 1 OK
strtoll   "1.2ki" ".2ki" 1 OK
strtonll  "1.2ki" "ki" 120 OK 0
strtoull  "1.2ki" ".2ki" 1 OK
strntol     5 "1.2ki" ".2ki" 1 OK
strntol     4 "1.2ki" ".2ki" 1 OK
strnton     5 "1.2ki" "ki" 120 OK 0
strnton     4 "1.2ki" "ki" 120 OK 0
strntoll    5 "1.2ki" ".2ki" 1 OK
strntoll    4 "1.2ki" ".2ki" 1 OK

strtol    "1.23ki" ".23ki" 1 OK
strton    "1.23ki" "ki" 123 OK 0
strtoul   "1.23ki" ".23ki" 1 OK
strtoll   "1.23ki" ".23ki" 1 OK
strtonll  "1.23ki" "ki" 123 OK 0
strtoull  "1.23ki" ".23ki" 1 OK
strntol     6 "1.23ki" ".23ki" 1 OK
strntol     5 "1.23ki" ".23ki" 1 OK
strnton     6 "1.23ki" "ki" 123 OK 0
strnton     5 "1.23ki" "ki" 123 OK 0
strntoll    6 "1.23ki" ".23ki" 1 OK
strntoll    5 "1.23ki" ".23ki" 1 OK

strtol    "1.234ki" ".234ki" 1 OK
strton    "1.234ki" "ki" 123 OK 0
strtoul   "1.234ki" ".234ki" 1 OK
strtoll   "1.234ki" ".234ki" 1 OK
strtonll  "1.234ki" "ki" 123 OK 0
strtoull  "1.234ki" ".234ki" 1 OK
strntol     7 "1.234ki" ".234ki" 1 OK
strntol     6 "1.234ki" ".234ki" 1 OK
strnton     7 "1.234ki" "ki" 123 OK 0
strnton     6 "1.234ki" "ki" 123 OK 0
strntoll    7 "1.234ki" ".234ki" 1 OK
strntoll    6 "1.234ki" ".234ki" 1 OK

;; 32/64)

TEST 01 'base 10'

	EXEC	0 -0 +0 00 -00 +00
		OUTPUT - $'strtol    "0" "" 0 OK
strton    "0" "" 0 OK 0
strtoul   "0" "" 0 OK
strtoll   "0" "" 0 OK
strtonll  "0" "" 0 OK 0
strtoull  "0" "" 0 OK
strntol     1 "0" "" 0 OK
strntol     0 "0" "0" 0 OK
strnton     1 "0" "" 0 OK 0
strnton     0 "0" "0" 0 OK 0
strntoll    1 "0" "" 0 OK
strntoll    0 "0" "0" 0 OK

strtol    "-0" "" 0 OK
strton    "-0" "" 0 OK 0
strtoul   "-0" "" 0 OK
strtoll   "-0" "" 0 OK
strtonll  "-0" "" 0 OK 0
strtoull  "-0" "" 0 OK
strntol     2 "-0" "" 0 OK
strntol     1 "-0" "-0" 0 OK
strnton     2 "-0" "" 0 OK 0
strnton     1 "-0" "-0" 0 OK 10
strntoll    2 "-0" "" 0 OK
strntoll    1 "-0" "-0" 0 OK

strtol    "+0" "" 0 OK
strton    "+0" "" 0 OK 0
strtoul   "+0" "" 0 OK
strtoll   "+0" "" 0 OK
strtonll  "+0" "" 0 OK 0
strtoull  "+0" "" 0 OK
strntol     2 "+0" "" 0 OK
strntol     1 "+0" "+0" 0 OK
strnton     2 "+0" "" 0 OK 0
strnton     1 "+0" "+0" 0 OK 10
strntoll    2 "+0" "" 0 OK
strntoll    1 "+0" "+0" 0 OK

strtol    "00" "" 0 OK
strton    "00" "" 0 OK 8
strtoul   "00" "" 0 OK
strtoll   "00" "" 0 OK
strtonll  "00" "" 0 OK 8
strtoull  "00" "" 0 OK
strntol     2 "00" "" 0 OK
strntol     1 "00" "0" 0 OK
strnton     2 "00" "" 0 OK 8
strnton     1 "00" "0" 0 OK 0
strntoll    2 "00" "" 0 OK
strntoll    1 "00" "0" 0 OK

strtol    "-00" "" 0 OK
strton    "-00" "" 0 OK 8
strtoul   "-00" "" 0 OK
strtoll   "-00" "" 0 OK
strtonll  "-00" "" 0 OK 8
strtoull  "-00" "" 0 OK
strntol     3 "-00" "" 0 OK
strntol     2 "-00" "0" 0 OK
strnton     3 "-00" "" 0 OK 8
strnton     2 "-00" "0" 0 OK 0
strntoll    3 "-00" "" 0 OK
strntoll    2 "-00" "0" 0 OK

strtol    "+00" "" 0 OK
strton    "+00" "" 0 OK 8
strtoul   "+00" "" 0 OK
strtoll   "+00" "" 0 OK
strtonll  "+00" "" 0 OK 8
strtoull  "+00" "" 0 OK
strntol     3 "+00" "" 0 OK
strntol     2 "+00" "0" 0 OK
strnton     3 "+00" "" 0 OK 8
strnton     2 "+00" "0" 0 OK 0
strntoll    3 "+00" "" 0 OK
strntoll    2 "+00" "0" 0 OK

	EXEC	32767 -32767 32768 -32768 32769 -32769
		OUTPUT - $'strtol    "32767" "" 32767 OK
strton    "32767" "" 32767 OK 0
strtoul   "32767" "" 32767 OK
strtoll   "32767" "" 32767 OK
strtonll  "32767" "" 32767 OK 0
strtoull  "32767" "" 32767 OK
strntol     5 "32767" "" 32767 OK
strntol     4 "32767" "7" 3276 OK
strnton     5 "32767" "" 32767 OK 0
strnton     4 "32767" "7" 3276 OK 0
strntoll    5 "32767" "" 32767 OK
strntoll    4 "32767" "7" 3276 OK

strtol    "-32767" "" -32767 OK
strton    "-32767" "" -32767 OK 0
strtoul   "-32767" "" 4294934529 OK
strtoll   "-32767" "" -32767 OK
strtonll  "-32767" "" -32767 OK 0
strtoull  "-32767" "" 18446744073709518849 OK
strntol     6 "-32767" "" -32767 OK
strntol     5 "-32767" "7" -3276 OK
strnton     6 "-32767" "" -32767 OK 0
strnton     5 "-32767" "7" -3276 OK 0
strntoll    6 "-32767" "" -32767 OK
strntoll    5 "-32767" "7" -3276 OK

strtol    "32768" "" 32768 OK
strton    "32768" "" 32768 OK 0
strtoul   "32768" "" 32768 OK
strtoll   "32768" "" 32768 OK
strtonll  "32768" "" 32768 OK 0
strtoull  "32768" "" 32768 OK
strntol     5 "32768" "" 32768 OK
strntol     4 "32768" "8" 3276 OK
strnton     5 "32768" "" 32768 OK 0
strnton     4 "32768" "8" 3276 OK 0
strntoll    5 "32768" "" 32768 OK
strntoll    4 "32768" "8" 3276 OK

strtol    "-32768" "" -32768 OK
strton    "-32768" "" -32768 OK 0
strtoul   "-32768" "" 4294934528 OK
strtoll   "-32768" "" -32768 OK
strtonll  "-32768" "" -32768 OK 0
strtoull  "-32768" "" 18446744073709518848 OK
strntol     6 "-32768" "" -32768 OK
strntol     5 "-32768" "8" -3276 OK
strnton     6 "-32768" "" -32768 OK 0
strnton     5 "-32768" "8" -3276 OK 0
strntoll    6 "-32768" "" -32768 OK
strntoll    5 "-32768" "8" -3276 OK

strtol    "32769" "" 32769 OK
strton    "32769" "" 32769 OK 0
strtoul   "32769" "" 32769 OK
strtoll   "32769" "" 32769 OK
strtonll  "32769" "" 32769 OK 0
strtoull  "32769" "" 32769 OK
strntol     5 "32769" "" 32769 OK
strntol     4 "32769" "9" 3276 OK
strnton     5 "32769" "" 32769 OK 0
strnton     4 "32769" "9" 3276 OK 0
strntoll    5 "32769" "" 32769 OK
strntoll    4 "32769" "9" 3276 OK

strtol    "-32769" "" -32769 OK
strton    "-32769" "" -32769 OK 0
strtoul   "-32769" "" 4294934527 OK
strtoll   "-32769" "" -32769 OK
strtonll  "-32769" "" -32769 OK 0
strtoull  "-32769" "" 18446744073709518847 OK
strntol     6 "-32769" "" -32769 OK
strntol     5 "-32769" "9" -3276 OK
strnton     6 "-32769" "" -32769 OK 0
strnton     5 "-32769" "9" -3276 OK 0
strntoll    6 "-32769" "" -32769 OK
strntoll    5 "-32769" "9" -3276 OK

	EXEC	65535 -65535 65536 -65536 65537 -65537
		OUTPUT - $'strtol    "65535" "" 65535 OK
strton    "65535" "" 65535 OK 0
strtoul   "65535" "" 65535 OK
strtoll   "65535" "" 65535 OK
strtonll  "65535" "" 65535 OK 0
strtoull  "65535" "" 65535 OK
strntol     5 "65535" "" 65535 OK
strntol     4 "65535" "5" 6553 OK
strnton     5 "65535" "" 65535 OK 0
strnton     4 "65535" "5" 6553 OK 0
strntoll    5 "65535" "" 65535 OK
strntoll    4 "65535" "5" 6553 OK

strtol    "-65535" "" -65535 OK
strton    "-65535" "" -65535 OK 0
strtoul   "-65535" "" 4294901761 OK
strtoll   "-65535" "" -65535 OK
strtonll  "-65535" "" -65535 OK 0
strtoull  "-65535" "" 18446744073709486081 OK
strntol     6 "-65535" "" -65535 OK
strntol     5 "-65535" "5" -6553 OK
strnton     6 "-65535" "" -65535 OK 0
strnton     5 "-65535" "5" -6553 OK 0
strntoll    6 "-65535" "" -65535 OK
strntoll    5 "-65535" "5" -6553 OK

strtol    "65536" "" 65536 OK
strton    "65536" "" 65536 OK 0
strtoul   "65536" "" 65536 OK
strtoll   "65536" "" 65536 OK
strtonll  "65536" "" 65536 OK 0
strtoull  "65536" "" 65536 OK
strntol     5 "65536" "" 65536 OK
strntol     4 "65536" "6" 6553 OK
strnton     5 "65536" "" 65536 OK 0
strnton     4 "65536" "6" 6553 OK 0
strntoll    5 "65536" "" 65536 OK
strntoll    4 "65536" "6" 6553 OK

strtol    "-65536" "" -65536 OK
strton    "-65536" "" -65536 OK 0
strtoul   "-65536" "" 4294901760 OK
strtoll   "-65536" "" -65536 OK
strtonll  "-65536" "" -65536 OK 0
strtoull  "-65536" "" 18446744073709486080 OK
strntol     6 "-65536" "" -65536 OK
strntol     5 "-65536" "6" -6553 OK
strnton     6 "-65536" "" -65536 OK 0
strnton     5 "-65536" "6" -6553 OK 0
strntoll    6 "-65536" "" -65536 OK
strntoll    5 "-65536" "6" -6553 OK

strtol    "65537" "" 65537 OK
strton    "65537" "" 65537 OK 0
strtoul   "65537" "" 65537 OK
strtoll   "65537" "" 65537 OK
strtonll  "65537" "" 65537 OK 0
strtoull  "65537" "" 65537 OK
strntol     5 "65537" "" 65537 OK
strntol     4 "65537" "7" 6553 OK
strnton     5 "65537" "" 65537 OK 0
strnton     4 "65537" "7" 6553 OK 0
strntoll    5 "65537" "" 65537 OK
strntoll    4 "65537" "7" 6553 OK

strtol    "-65537" "" -65537 OK
strton    "-65537" "" -65537 OK 0
strtoul   "-65537" "" 4294901759 OK
strtoll   "-65537" "" -65537 OK
strtonll  "-65537" "" -65537 OK 0
strtoull  "-65537" "" 18446744073709486079 OK
strntol     6 "-65537" "" -65537 OK
strntol     5 "-65537" "7" -6553 OK
strnton     6 "-65537" "" -65537 OK 0
strnton     5 "-65537" "7" -6553 OK 0
strntoll    6 "-65537" "" -65537 OK
strntoll    5 "-65537" "7" -6553 OK

	EXEC	2147483647 -2147483647 2147483648 -2147483648 2147483649 -2147483649
		OUTPUT - $'strtol    "2147483647" "" 2147483647 OK
strton    "2147483647" "" 2147483647 OK 0
strtoul   "2147483647" "" 2147483647 OK
strtoll   "2147483647" "" 2147483647 OK
strtonll  "2147483647" "" 2147483647 OK 0
strtoull  "2147483647" "" 2147483647 OK
strntol    10 "2147483647" "" 2147483647 OK
strntol     9 "2147483647" "7" 214748364 OK
strnton    10 "2147483647" "" 2147483647 OK 0
strnton     9 "2147483647" "7" 214748364 OK 0
strntoll   10 "2147483647" "" 2147483647 OK
strntoll    9 "2147483647" "7" 214748364 OK

strtol    "-2147483647" "" -2147483647 OK
strton    "-2147483647" "" -2147483647 OK 0
strtoul   "-2147483647" "" 2147483649 OK
strtoll   "-2147483647" "" -2147483647 OK
strtonll  "-2147483647" "" -2147483647 OK 0
strtoull  "-2147483647" "" 18446744071562067969 OK
strntol    11 "-2147483647" "" -2147483647 OK
strntol    10 "-2147483647" "7" -214748364 OK
strnton    11 "-2147483647" "" -2147483647 OK 0
strnton    10 "-2147483647" "7" -214748364 OK 0
strntoll   11 "-2147483647" "" -2147483647 OK
strntoll   10 "-2147483647" "7" -214748364 OK

strtol    "2147483648" "" 2147483647 ERANGE
strton    "2147483648" "" 2147483647 ERANGE 0
strtoul   "2147483648" "" 2147483648 OK
strtoll   "2147483648" "" 2147483648 OK
strtonll  "2147483648" "" 2147483648 OK 0
strtoull  "2147483648" "" 2147483648 OK
strntol    10 "2147483648" "" 2147483647 ERANGE
strntol     9 "2147483648" "8" 214748364 OK
strnton    10 "2147483648" "" 2147483647 ERANGE 0
strnton     9 "2147483648" "8" 214748364 OK 0
strntoll   10 "2147483648" "" 2147483648 OK
strntoll    9 "2147483648" "8" 214748364 OK

strtol    "-2147483648" "" -2147483648 OK
strton    "-2147483648" "" -2147483648 OK 0
strtoul   "-2147483648" "" 2147483648 OK
strtoll   "-2147483648" "" -2147483648 OK
strtonll  "-2147483648" "" -2147483648 OK 0
strtoull  "-2147483648" "" 18446744071562067968 OK
strntol    11 "-2147483648" "" -2147483648 OK
strntol    10 "-2147483648" "8" -214748364 OK
strnton    11 "-2147483648" "" -2147483648 OK 0
strnton    10 "-2147483648" "8" -214748364 OK 0
strntoll   11 "-2147483648" "" -2147483648 OK
strntoll   10 "-2147483648" "8" -214748364 OK

strtol    "2147483649" "" 2147483647 ERANGE
strton    "2147483649" "" 2147483647 ERANGE 0
strtoul   "2147483649" "" 2147483649 OK
strtoll   "2147483649" "" 2147483649 OK
strtonll  "2147483649" "" 2147483649 OK 0
strtoull  "2147483649" "" 2147483649 OK
strntol    10 "2147483649" "" 2147483647 ERANGE
strntol     9 "2147483649" "9" 214748364 OK
strnton    10 "2147483649" "" 2147483647 ERANGE 0
strnton     9 "2147483649" "9" 214748364 OK 0
strntoll   10 "2147483649" "" 2147483649 OK
strntoll    9 "2147483649" "9" 214748364 OK

strtol    "-2147483649" "" -2147483648 ERANGE
strton    "-2147483649" "" -2147483648 ERANGE 0
strtoul   "-2147483649" "" 2147483647 OK
strtoll   "-2147483649" "" -2147483649 OK
strtonll  "-2147483649" "" -2147483649 OK 0
strtoull  "-2147483649" "" 18446744071562067967 OK
strntol    11 "-2147483649" "" -2147483648 ERANGE
strntol    10 "-2147483649" "9" -214748364 OK
strnton    11 "-2147483649" "" -2147483648 ERANGE 0
strnton    10 "-2147483649" "9" -214748364 OK 0
strntoll   11 "-2147483649" "" -2147483649 OK
strntoll   10 "-2147483649" "9" -214748364 OK

	EXEC	4294967295 -4294967295 4294967296 -4294967296 4294967297 -4294967297
		OUTPUT - $'strtol    "4294967295" "" 2147483647 ERANGE
strton    "4294967295" "" 2147483647 ERANGE 0
strtoul   "4294967295" "" 4294967295 OK
strtoll   "4294967295" "" 4294967295 OK
strtonll  "4294967295" "" 4294967295 OK 0
strtoull  "4294967295" "" 4294967295 OK
strntol    10 "4294967295" "" 2147483647 ERANGE
strntol     9 "4294967295" "5" 429496729 OK
strnton    10 "4294967295" "" 2147483647 ERANGE 0
strnton     9 "4294967295" "5" 429496729 OK 0
strntoll   10 "4294967295" "" 4294967295 OK
strntoll    9 "4294967295" "5" 429496729 OK

strtol    "-4294967295" "" -2147483648 ERANGE
strton    "-4294967295" "" -2147483648 ERANGE 0
strtoul   "-4294967295" "" 4294967295 ERANGE
strtoll   "-4294967295" "" -4294967295 OK
strtonll  "-4294967295" "" -4294967295 OK 0
strtoull  "-4294967295" "" 18446744069414584321 OK
strntol    11 "-4294967295" "" -2147483648 ERANGE
strntol    10 "-4294967295" "5" -429496729 OK
strnton    11 "-4294967295" "" -2147483648 ERANGE 0
strnton    10 "-4294967295" "5" -429496729 OK 0
strntoll   11 "-4294967295" "" -4294967295 OK
strntoll   10 "-4294967295" "5" -429496729 OK

strtol    "4294967296" "" 2147483647 ERANGE
strton    "4294967296" "" 2147483647 ERANGE 0
strtoul   "4294967296" "" 4294967295 ERANGE
strtoll   "4294967296" "" 4294967296 OK
strtonll  "4294967296" "" 4294967296 OK 0
strtoull  "4294967296" "" 4294967296 OK
strntol    10 "4294967296" "" 2147483647 ERANGE
strntol     9 "4294967296" "6" 429496729 OK
strnton    10 "4294967296" "" 2147483647 ERANGE 0
strnton     9 "4294967296" "6" 429496729 OK 0
strntoll   10 "4294967296" "" 4294967296 OK
strntoll    9 "4294967296" "6" 429496729 OK

strtol    "-4294967296" "" -2147483648 ERANGE
strton    "-4294967296" "" -2147483648 ERANGE 0
strtoul   "-4294967296" "" 4294967295 ERANGE
strtoll   "-4294967296" "" -4294967296 OK
strtonll  "-4294967296" "" -4294967296 OK 0
strtoull  "-4294967296" "" 18446744069414584320 OK
strntol    11 "-4294967296" "" -2147483648 ERANGE
strntol    10 "-4294967296" "6" -429496729 OK
strnton    11 "-4294967296" "" -2147483648 ERANGE 0
strnton    10 "-4294967296" "6" -429496729 OK 0
strntoll   11 "-4294967296" "" -4294967296 OK
strntoll   10 "-4294967296" "6" -429496729 OK

strtol    "4294967297" "" 2147483647 ERANGE
strton    "4294967297" "" 2147483647 ERANGE 0
strtoul   "4294967297" "" 4294967295 ERANGE
strtoll   "4294967297" "" 4294967297 OK
strtonll  "4294967297" "" 4294967297 OK 0
strtoull  "4294967297" "" 4294967297 OK
strntol    10 "4294967297" "" 2147483647 ERANGE
strntol     9 "4294967297" "7" 429496729 OK
strnton    10 "4294967297" "" 2147483647 ERANGE 0
strnton     9 "4294967297" "7" 429496729 OK 0
strntoll   10 "4294967297" "" 4294967297 OK
strntoll    9 "4294967297" "7" 429496729 OK

strtol    "-4294967297" "" -2147483648 ERANGE
strton    "-4294967297" "" -2147483648 ERANGE 0
strtoul   "-4294967297" "" 4294967295 ERANGE
strtoll   "-4294967297" "" -4294967297 OK
strtonll  "-4294967297" "" -4294967297 OK 0
strtoull  "-4294967297" "" 18446744069414584319 OK
strntol    11 "-4294967297" "" -2147483648 ERANGE
strntol    10 "-4294967297" "7" -429496729 OK
strnton    11 "-4294967297" "" -2147483648 ERANGE 0
strnton    10 "-4294967297" "7" -429496729 OK 0
strntoll   11 "-4294967297" "" -4294967297 OK
strntoll   10 "-4294967297" "7" -429496729 OK

	EXEC	9223372036854775807 -9223372036854775807 9223372036854775808 -9223372036854775808 9223372036854775809 -9223372036854775809
		OUTPUT - $'strtol    "9223372036854775807" "" 2147483647 ERANGE
strton    "9223372036854775807" "" 2147483647 ERANGE 0
strtoul   "9223372036854775807" "" 4294967295 ERANGE
strtoll   "9223372036854775807" "" 9223372036854775807 OK
strtonll  "9223372036854775807" "" 9223372036854775807 OK 0
strtoull  "9223372036854775807" "" 9223372036854775807 OK
strntol    19 "9223372036854775807" "" 2147483647 ERANGE
strntol    18 "9223372036854775807" "7" 2147483647 ERANGE
strnton    19 "9223372036854775807" "" 2147483647 ERANGE 0
strnton    18 "9223372036854775807" "7" 2147483647 ERANGE 0
strntoll   19 "9223372036854775807" "" 9223372036854775807 OK
strntoll   18 "9223372036854775807" "7" 922337203685477580 OK

strtol    "-9223372036854775807" "" -2147483648 ERANGE
strton    "-9223372036854775807" "" -2147483648 ERANGE 0
strtoul   "-9223372036854775807" "" 4294967295 ERANGE
strtoll   "-9223372036854775807" "" -9223372036854775807 OK
strtonll  "-9223372036854775807" "" -9223372036854775807 OK 0
strtoull  "-9223372036854775807" "" 9223372036854775809 OK
strntol    20 "-9223372036854775807" "" -2147483648 ERANGE
strntol    19 "-9223372036854775807" "7" -2147483648 ERANGE
strnton    20 "-9223372036854775807" "" -2147483648 ERANGE 0
strnton    19 "-9223372036854775807" "7" -2147483648 ERANGE 0
strntoll   20 "-9223372036854775807" "" -9223372036854775807 OK
strntoll   19 "-9223372036854775807" "7" -922337203685477580 OK

strtol    "9223372036854775808" "" 2147483647 ERANGE
strton    "9223372036854775808" "" 2147483647 ERANGE 0
strtoul   "9223372036854775808" "" 4294967295 ERANGE
strtoll   "9223372036854775808" "" 9223372036854775807 ERANGE
strtonll  "9223372036854775808" "" 9223372036854775807 ERANGE 0
strtoull  "9223372036854775808" "" 9223372036854775808 OK
strntol    19 "9223372036854775808" "" 2147483647 ERANGE
strntol    18 "9223372036854775808" "8" 2147483647 ERANGE
strnton    19 "9223372036854775808" "" 2147483647 ERANGE 0
strnton    18 "9223372036854775808" "8" 2147483647 ERANGE 0
strntoll   19 "9223372036854775808" "" 9223372036854775807 ERANGE
strntoll   18 "9223372036854775808" "8" 922337203685477580 OK

strtol    "-9223372036854775808" "" -2147483648 ERANGE
strton    "-9223372036854775808" "" -2147483648 ERANGE 0
strtoul   "-9223372036854775808" "" 4294967295 ERANGE
strtoll   "-9223372036854775808" "" -9223372036854775808 OK
strtonll  "-9223372036854775808" "" -9223372036854775808 OK 0
strtoull  "-9223372036854775808" "" 9223372036854775808 OK
strntol    20 "-9223372036854775808" "" -2147483648 ERANGE
strntol    19 "-9223372036854775808" "8" -2147483648 ERANGE
strnton    20 "-9223372036854775808" "" -2147483648 ERANGE 0
strnton    19 "-9223372036854775808" "8" -2147483648 ERANGE 0
strntoll   20 "-9223372036854775808" "" -9223372036854775808 OK
strntoll   19 "-9223372036854775808" "8" -922337203685477580 OK

strtol    "9223372036854775809" "" 2147483647 ERANGE
strton    "9223372036854775809" "" 2147483647 ERANGE 0
strtoul   "9223372036854775809" "" 4294967295 ERANGE
strtoll   "9223372036854775809" "" 9223372036854775807 ERANGE
strtonll  "9223372036854775809" "" 9223372036854775807 ERANGE 0
strtoull  "9223372036854775809" "" 9223372036854775809 OK
strntol    19 "9223372036854775809" "" 2147483647 ERANGE
strntol    18 "9223372036854775809" "9" 2147483647 ERANGE
strnton    19 "9223372036854775809" "" 2147483647 ERANGE 0
strnton    18 "9223372036854775809" "9" 2147483647 ERANGE 0
strntoll   19 "9223372036854775809" "" 9223372036854775807 ERANGE
strntoll   18 "9223372036854775809" "9" 922337203685477580 OK

strtol    "-9223372036854775809" "" -2147483648 ERANGE
strton    "-9223372036854775809" "" -2147483648 ERANGE 0
strtoul   "-9223372036854775809" "" 4294967295 ERANGE
strtoll   "-9223372036854775809" "" -9223372036854775808 ERANGE
strtonll  "-9223372036854775809" "" -9223372036854775808 ERANGE 0
strtoull  "-9223372036854775809" "" 9223372036854775807 OK
strntol    20 "-9223372036854775809" "" -2147483648 ERANGE
strntol    19 "-9223372036854775809" "9" -2147483648 ERANGE
strnton    20 "-9223372036854775809" "" -2147483648 ERANGE 0
strnton    19 "-9223372036854775809" "9" -2147483648 ERANGE 0
strntoll   20 "-9223372036854775809" "" -9223372036854775808 ERANGE
strntoll   19 "-9223372036854775809" "9" -922337203685477580 OK

	EXEC	18446744073709551615 -18446744073709551615 18446744073709551616 -18446744073709551616 18446744073709551617 -18446744073709551617
		OUTPUT - $'strtol    "18446744073709551615" "" 2147483647 ERANGE
strton    "18446744073709551615" "" 2147483647 ERANGE 0
strtoul   "18446744073709551615" "" 4294967295 ERANGE
strtoll   "18446744073709551615" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551615" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551615" "" 18446744073709551615 OK
strntol    20 "18446744073709551615" "" 2147483647 ERANGE
strntol    19 "18446744073709551615" "5" 2147483647 ERANGE
strnton    20 "18446744073709551615" "" 2147483647 ERANGE 0
strnton    19 "18446744073709551615" "5" 2147483647 ERANGE 0
strntoll   20 "18446744073709551615" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551615" "5" 1844674407370955161 OK

strtol    "-18446744073709551615" "" -2147483648 ERANGE
strton    "-18446744073709551615" "" -2147483648 ERANGE 0
strtoul   "-18446744073709551615" "" 4294967295 ERANGE
strtoll   "-18446744073709551615" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551615" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551615" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551615" "" -2147483648 ERANGE
strntol    20 "-18446744073709551615" "5" -2147483648 ERANGE
strnton    21 "-18446744073709551615" "" -2147483648 ERANGE 0
strnton    20 "-18446744073709551615" "5" -2147483648 ERANGE 0
strntoll   21 "-18446744073709551615" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551615" "5" -1844674407370955161 OK

strtol    "18446744073709551616" "" 2147483647 ERANGE
strton    "18446744073709551616" "" 2147483647 ERANGE 0
strtoul   "18446744073709551616" "" 4294967295 ERANGE
strtoll   "18446744073709551616" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551616" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551616" "" 18446744073709551615 ERANGE
strntol    20 "18446744073709551616" "" 2147483647 ERANGE
strntol    19 "18446744073709551616" "6" 2147483647 ERANGE
strnton    20 "18446744073709551616" "" 2147483647 ERANGE 0
strnton    19 "18446744073709551616" "6" 2147483647 ERANGE 0
strntoll   20 "18446744073709551616" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551616" "6" 1844674407370955161 OK

strtol    "-18446744073709551616" "" -2147483648 ERANGE
strton    "-18446744073709551616" "" -2147483648 ERANGE 0
strtoul   "-18446744073709551616" "" 4294967295 ERANGE
strtoll   "-18446744073709551616" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551616" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551616" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551616" "" -2147483648 ERANGE
strntol    20 "-18446744073709551616" "6" -2147483648 ERANGE
strnton    21 "-18446744073709551616" "" -2147483648 ERANGE 0
strnton    20 "-18446744073709551616" "6" -2147483648 ERANGE 0
strntoll   21 "-18446744073709551616" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551616" "6" -1844674407370955161 OK

strtol    "18446744073709551617" "" 2147483647 ERANGE
strton    "18446744073709551617" "" 2147483647 ERANGE 0
strtoul   "18446744073709551617" "" 4294967295 ERANGE
strtoll   "18446744073709551617" "" 9223372036854775807 ERANGE
strtonll  "18446744073709551617" "" 9223372036854775807 ERANGE 0
strtoull  "18446744073709551617" "" 18446744073709551615 ERANGE
strntol    20 "18446744073709551617" "" 2147483647 ERANGE
strntol    19 "18446744073709551617" "7" 2147483647 ERANGE
strnton    20 "18446744073709551617" "" 2147483647 ERANGE 0
strnton    19 "18446744073709551617" "7" 2147483647 ERANGE 0
strntoll   20 "18446744073709551617" "" 9223372036854775807 ERANGE
strntoll   19 "18446744073709551617" "7" 1844674407370955161 OK

strtol    "-18446744073709551617" "" -2147483648 ERANGE
strton    "-18446744073709551617" "" -2147483648 ERANGE 0
strtoul   "-18446744073709551617" "" 4294967295 ERANGE
strtoll   "-18446744073709551617" "" -9223372036854775808 ERANGE
strtonll  "-18446744073709551617" "" -9223372036854775808 ERANGE 0
strtoull  "-18446744073709551617" "" 18446744073709551615 ERANGE
strntol    21 "-18446744073709551617" "" -2147483648 ERANGE
strntol    20 "-18446744073709551617" "7" -2147483648 ERANGE
strnton    21 "-18446744073709551617" "" -2147483648 ERANGE 0
strnton    20 "-18446744073709551617" "7" -2147483648 ERANGE 0
strntoll   21 "-18446744073709551617" "" -9223372036854775808 ERANGE
strntoll   20 "-18446744073709551617" "7" -1844674407370955161 OK

TEST 02 'hex'

	EXEC	0xffffffff0 0xfffffffff 0x17fffffff
		OUTPUT - $'strtol    "0xffffffff0" "" 2147483647 ERANGE
strton    "0xffffffff0" "" 2147483647 ERANGE 16
strtoul   "0xffffffff0" "" 4294967295 ERANGE
strtoll   "0xffffffff0" "" 68719476720 OK
strtonll  "0xffffffff0" "" 68719476720 OK 16
strtoull  "0xffffffff0" "" 68719476720 OK
strntol    11 "0xffffffff0" "" 2147483647 ERANGE
strntol    10 "0xffffffff0" "0" -1 OK
strnton    11 "0xffffffff0" "" 2147483647 ERANGE 16
strnton    10 "0xffffffff0" "0" -1 OK 16
strntoll   11 "0xffffffff0" "" 68719476720 OK
strntoll   10 "0xffffffff0" "0" 4294967295 OK

strtol    "0xfffffffff" "" 2147483647 ERANGE
strton    "0xfffffffff" "" 2147483647 ERANGE 16
strtoul   "0xfffffffff" "" 4294967295 ERANGE
strtoll   "0xfffffffff" "" 68719476735 OK
strtonll  "0xfffffffff" "" 68719476735 OK 16
strtoull  "0xfffffffff" "" 68719476735 OK
strntol    11 "0xfffffffff" "" 2147483647 ERANGE
strntol    10 "0xfffffffff" "f" -1 OK
strnton    11 "0xfffffffff" "" 2147483647 ERANGE 16
strnton    10 "0xfffffffff" "f" -1 OK 16
strntoll   11 "0xfffffffff" "" 68719476735 OK
strntoll   10 "0xfffffffff" "f" 4294967295 OK

strtol    "0x17fffffff" "" 2147483647 ERANGE
strton    "0x17fffffff" "" 2147483647 ERANGE 16
strtoul   "0x17fffffff" "" 4294967295 ERANGE
strtoll   "0x17fffffff" "" 6442450943 OK
strtonll  "0x17fffffff" "" 6442450943 OK 16
strtoull  "0x17fffffff" "" 6442450943 OK
strntol    11 "0x17fffffff" "" 2147483647 ERANGE
strntol    10 "0x17fffffff" "f" 402653183 OK
strnton    11 "0x17fffffff" "" 2147483647 ERANGE 16
strnton    10 "0x17fffffff" "f" 402653183 OK 16
strntoll   11 "0x17fffffff" "" 6442450943 OK
strntoll   10 "0x17fffffff" "f" 402653183 OK

TEST 03 'thousands separator'

	EXEC	LC_ALL=debug 12345678 12.345.678 12.345678 12.345.67 1.234 123.456
		OUTPUT - $'strtol    "12345678" "" 12345678 OK
strton    "12345678" "" 12345678 OK 0
strtoul   "12345678" "" 12345678 OK
strtoll   "12345678" "" 12345678 OK
strtonll  "12345678" "" 12345678 OK 0
strtoull  "12345678" "" 12345678 OK
strntol     8 "12345678" "" 12345678 OK
strntol     7 "12345678" "8" 1234567 OK
strnton     8 "12345678" "" 12345678 OK 0
strnton     7 "12345678" "8" 1234567 OK 0
strntoll    8 "12345678" "" 12345678 OK
strntoll    7 "12345678" "8" 1234567 OK

strtol    "12.345.678" "" 12345678 OK
strton    "12.345.678" "" 12345678 OK 0
strtoul   "12.345.678" "" 12345678 OK
strtoll   "12.345.678" "" 12345678 OK
strtonll  "12.345.678" "" 12345678 OK 0
strtoull  "12.345.678" "" 12345678 OK
strntol    10 "12.345.678" "" 12345678 OK
strntol     9 "12.345.678" ".678" 12345 OK
strnton    10 "12.345.678" "" 12345678 OK 0
strnton     9 "12.345.678" ".678" 12345 OK 0
strntoll   10 "12.345.678" "" 12345678 OK
strntoll    9 "12.345.678" ".678" 12345 OK

strtol    "12.345678" ".345678" 12 OK
strton    "12.345678" ".345678" 12 OK 0
strtoul   "12.345678" ".345678" 12 OK
strtoll   "12.345678" ".345678" 12 OK
strtonll  "12.345678" ".345678" 12 OK 0
strtoull  "12.345678" ".345678" 12 OK
strntol     9 "12.345678" ".345678" 12 OK
strntol     8 "12.345678" ".345678" 12 OK
strnton     9 "12.345678" ".345678" 12 OK 0
strnton     8 "12.345678" ".345678" 12 OK 0
strntoll    9 "12.345678" ".345678" 12 OK
strntoll    8 "12.345678" ".345678" 12 OK

strtol    "12.345.67" ".67" 12345 OK
strton    "12.345.67" ".67" 12345 OK 0
strtoul   "12.345.67" ".67" 12345 OK
strtoll   "12.345.67" ".67" 12345 OK
strtonll  "12.345.67" ".67" 12345 OK 0
strtoull  "12.345.67" ".67" 12345 OK
strntol     9 "12.345.67" ".67" 12345 OK
strntol     8 "12.345.67" ".67" 12345 OK
strnton     9 "12.345.67" ".67" 12345 OK 0
strnton     8 "12.345.67" ".67" 12345 OK 0
strntoll    9 "12.345.67" ".67" 12345 OK
strntoll    8 "12.345.67" ".67" 12345 OK

strtol    "1.234" "" 1234 OK
strton    "1.234" "" 1234 OK 0
strtoul   "1.234" "" 1234 OK
strtoll   "1.234" "" 1234 OK
strtonll  "1.234" "" 1234 OK 0
strtoull  "1.234" "" 1234 OK
strntol     5 "1.234" "" 1234 OK
strntol     4 "1.234" ".234" 1 OK
strnton     5 "1.234" "" 1234 OK 0
strnton     4 "1.234" ".234" 1 OK 0
strntoll    5 "1.234" "" 1234 OK
strntoll    4 "1.234" ".234" 1 OK

strtol    "123.456" "" 123456 OK
strton    "123.456" "" 123456 OK 0
strtoul   "123.456" "" 123456 OK
strtoll   "123.456" "" 123456 OK
strtonll  "123.456" "" 123456 OK 0
strtoull  "123.456" "" 123456 OK
strntol     7 "123.456" "" 123456 OK
strntol     6 "123.456" ".456" 123 OK
strnton     7 "123.456" "" 123456 OK 0
strnton     6 "123.456" ".456" 123 OK 0
strntoll    7 "123.456" "" 123456 OK
strntoll    6 "123.456" ".456" 123 OK

TEST 04 'malformations'

	EXEC - + 0x -0x +0x 11# -11# +11# 11#A 11#B
		OUTPUT - $'strtol    "-" "-" 0 OK
strton    "-" "-" 0 OK 10
strtoul   "-" "-" 0 OK
strtoll   "-" "-" 0 OK
strtonll  "-" "-" 0 OK 10
strtoull  "-" "-" 0 OK
strntol     1 "-" "-" 0 OK
strntol     0 "-" "-" 0 OK
strnton     1 "-" "-" 0 OK 10
strnton     0 "-" "-" 0 OK 0
strntoll    1 "-" "-" 0 OK
strntoll    0 "-" "-" 0 OK

strtol    "+" "+" 0 OK
strton    "+" "+" 0 OK 10
strtoul   "+" "+" 0 OK
strtoll   "+" "+" 0 OK
strtonll  "+" "+" 0 OK 10
strtoull  "+" "+" 0 OK
strntol     1 "+" "+" 0 OK
strntol     0 "+" "+" 0 OK
strnton     1 "+" "+" 0 OK 10
strnton     0 "+" "+" 0 OK 0
strntoll    1 "+" "+" 0 OK
strntoll    0 "+" "+" 0 OK

strtol    "0x" "x" 0 OK
strton    "0x" "x" 0 OK 10
strtoul   "0x" "x" 0 OK
strtoll   "0x" "x" 0 OK
strtonll  "0x" "x" 0 OK 10
strtoull  "0x" "x" 0 OK
strntol     2 "0x" "x" 0 OK
strntol     1 "0x" "x" 0 OK
strnton     2 "0x" "x" 0 OK 10
strnton     1 "0x" "x" 0 OK 0
strntoll    2 "0x" "x" 0 OK
strntoll    1 "0x" "x" 0 OK

strtol    "-0x" "x" 0 OK
strton    "-0x" "x" 0 OK 10
strtoul   "-0x" "x" 0 OK
strtoll   "-0x" "x" 0 OK
strtonll  "-0x" "x" 0 OK 10
strtoull  "-0x" "x" 0 OK
strntol     3 "-0x" "x" 0 OK
strntol     2 "-0x" "x" 0 OK
strnton     3 "-0x" "x" 0 OK 10
strnton     2 "-0x" "x" 0 OK 0
strntoll    3 "-0x" "x" 0 OK
strntoll    2 "-0x" "x" 0 OK

strtol    "+0x" "x" 0 OK
strton    "+0x" "x" 0 OK 10
strtoul   "+0x" "x" 0 OK
strtoll   "+0x" "x" 0 OK
strtonll  "+0x" "x" 0 OK 10
strtoull  "+0x" "x" 0 OK
strntol     3 "+0x" "x" 0 OK
strntol     2 "+0x" "x" 0 OK
strnton     3 "+0x" "x" 0 OK 10
strnton     2 "+0x" "x" 0 OK 0
strntoll    3 "+0x" "x" 0 OK
strntoll    2 "+0x" "x" 0 OK

strtol    "11#" "#" 0 OK
strton    "11#" "#" 0 OK 10
strtoul   "11#" "#" 0 OK
strtoll   "11#" "#" 0 OK
strtonll  "11#" "#" 0 OK 10
strtoull  "11#" "#" 0 OK
strntol     3 "11#" "#" 0 OK
strntol     2 "11#" "#" 11 OK
strnton     3 "11#" "#" 0 OK 10
strnton     2 "11#" "#" 11 OK 0
strntoll    3 "11#" "#" 0 OK
strntoll    2 "11#" "#" 11 OK

strtol    "-11#" "#" 0 OK
strton    "-11#" "#" 0 OK 10
strtoul   "-11#" "#" 0 OK
strtoll   "-11#" "#" 0 OK
strtonll  "-11#" "#" 0 OK 10
strtoull  "-11#" "#" 0 OK
strntol     4 "-11#" "#" 0 OK
strntol     3 "-11#" "#" -11 OK
strnton     4 "-11#" "#" 0 OK 10
strnton     3 "-11#" "#" -11 OK 0
strntoll    4 "-11#" "#" 0 OK
strntoll    3 "-11#" "#" -11 OK

strtol    "+11#" "#" 0 OK
strton    "+11#" "#" 0 OK 10
strtoul   "+11#" "#" 0 OK
strtoll   "+11#" "#" 0 OK
strtonll  "+11#" "#" 0 OK 10
strtoull  "+11#" "#" 0 OK
strntol     4 "+11#" "#" 0 OK
strntol     3 "+11#" "#" 11 OK
strnton     4 "+11#" "#" 0 OK 10
strnton     3 "+11#" "#" 11 OK 0
strntoll    4 "+11#" "#" 0 OK
strntoll    3 "+11#" "#" 11 OK

strtol    "11#A" "" 10 OK
strton    "11#A" "" 10 OK 11
strtoul   "11#A" "" 10 OK
strtoll   "11#A" "" 10 OK
strtonll  "11#A" "" 10 OK 11
strtoull  "11#A" "" 10 OK
strntol     4 "11#A" "" 10 OK
strntol     3 "11#A" "#A" 0 OK
strnton     4 "11#A" "" 10 OK 11
strnton     3 "11#A" "#A" 0 OK 10
strntoll    4 "11#A" "" 10 OK
strntoll    3 "11#A" "#A" 0 OK

strtol    "11#B" "#B" 0 OK
strton    "11#B" "#B" 0 OK 10
strtoul   "11#B" "#B" 0 OK
strtoll   "11#B" "#B" 0 OK
strtonll  "11#B" "#B" 0 OK 10
strtoull  "11#B" "#B" 0 OK
strntol     4 "11#B" "" 0 OK
strntol     3 "11#B" "#B" 0 OK
strnton     4 "11#B" "" 0 OK 11
strnton     3 "11#B" "#B" 0 OK 10
strntoll    4 "11#B" "" 0 OK
strntoll    3 "11#B" "#B" 0 OK

TEST 05 'multiplier suffixes'

	EXEC 1b 1k 1m 1g 1t 1p 1e 1. 1.2 1.23 1.234 1.k 1.2k 1.23k 1.234k
		OUTPUT - $'strtol    "1b" "b" 1 OK
strton    "1b" "" 512 OK 0
strtoul   "1b" "b" 1 OK
strtoll   "1b" "b" 1 OK
strtonll  "1b" "" 512 OK 0
strtoull  "1b" "b" 1 OK
strntol     2 "1b" "" 1 OK
strntol     1 "1b" "b" 1 OK
strnton     2 "1b" "" 1 OK 0
strnton     1 "1b" "b" 1 OK 0
strntoll    2 "1b" "" 1 OK
strntoll    1 "1b" "b" 1 OK

strtol    "1k" "k" 1 OK
strton    "1k" "" 1000 OK 0
strtoul   "1k" "k" 1 OK
strtoll   "1k" "k" 1 OK
strtonll  "1k" "" 1000 OK 0
strtoull  "1k" "k" 1 OK
strntol     2 "1k" "" 1 OK
strntol     1 "1k" "k" 1 OK
strnton     2 "1k" "" 1 OK 0
strnton     1 "1k" "k" 1 OK 0
strntoll    2 "1k" "" 1 OK
strntoll    1 "1k" "k" 1 OK

strtol    "1m" "m" 1 OK
strton    "1m" "" 1000000 OK 0
strtoul   "1m" "m" 1 OK
strtoll   "1m" "m" 1 OK
strtonll  "1m" "" 1000000 OK 0
strtoull  "1m" "m" 1 OK
strntol     2 "1m" "" 1 OK
strntol     1 "1m" "m" 1 OK
strnton     2 "1m" "" 1 OK 0
strnton     1 "1m" "m" 1 OK 0
strntoll    2 "1m" "" 1 OK
strntoll    1 "1m" "m" 1 OK

strtol    "1g" "g" 1 OK
strton    "1g" "" 1000000000 OK 0
strtoul   "1g" "g" 1 OK
strtoll   "1g" "g" 1 OK
strtonll  "1g" "" 1000000000 OK 0
strtoull  "1g" "g" 1 OK
strntol     2 "1g" "" 1 OK
strntol     1 "1g" "g" 1 OK
strnton     2 "1g" "" 1 OK 0
strnton     1 "1g" "g" 1 OK 0
strntoll    2 "1g" "" 1 OK
strntoll    1 "1g" "g" 1 OK

strtol    "1t" "t" 1 OK
strton    "1t" "" 2147483647 ERANGE 0
strtoul   "1t" "t" 1 OK
strtoll   "1t" "t" 1 OK
strtonll  "1t" "" 1000000000000 OK 0
strtoull  "1t" "t" 1 OK
strntol     2 "1t" "" 1 OK
strntol     1 "1t" "t" 1 OK
strnton     2 "1t" "" 1 OK 0
strnton     1 "1t" "t" 1 OK 0
strntoll    2 "1t" "" 1 OK
strntoll    1 "1t" "t" 1 OK

strtol    "1p" "p" 1 OK
strton    "1p" "" 2147483647 ERANGE 0
strtoul   "1p" "p" 1 OK
strtoll   "1p" "p" 1 OK
strtonll  "1p" "" 1000000000000000 OK 0
strtoull  "1p" "p" 1 OK
strntol     2 "1p" "" 1 OK
strntol     1 "1p" "p" 1 OK
strnton     2 "1p" "" 1 OK 0
strnton     1 "1p" "p" 1 OK 0
strntoll    2 "1p" "" 1 OK
strntoll    1 "1p" "p" 1 OK

strtol    "1e" "e" 1 OK
strton    "1e" "" 2147483647 ERANGE 0
strtoul   "1e" "e" 1 OK
strtoll   "1e" "e" 1 OK
strtonll  "1e" "" 1000000000000000000 OK 0
strtoull  "1e" "e" 1 OK
strntol     2 "1e" "" 1 OK
strntol     1 "1e" "e" 1 OK
strnton     2 "1e" "" 1 OK 0
strnton     1 "1e" "e" 1 OK 0
strntoll    2 "1e" "" 1 OK
strntoll    1 "1e" "e" 1 OK

strtol    "1." "." 1 OK
strton    "1." "" 100 OK 0
strtoul   "1." "." 1 OK
strtoll   "1." "." 1 OK
strtonll  "1." "" 100 OK 0
strtoull  "1." "." 1 OK
strntol     2 "1." "" 1 OK
strntol     1 "1." "." 1 OK
strnton     2 "1." "" 1 OK 0
strnton     1 "1." "." 1 OK 0
strntoll    2 "1." "" 1 OK
strntoll    1 "1." "." 1 OK

strtol    "1.2" ".2" 1 OK
strton    "1.2" "" 120 OK 0
strtoul   "1.2" ".2" 1 OK
strtoll   "1.2" ".2" 1 OK
strtonll  "1.2" "" 120 OK 0
strtoull  "1.2" ".2" 1 OK
strntol     3 "1.2" ".2" 1 OK
strntol     2 "1.2" "2" 1 OK
strnton     3 "1.2" "2" 120 OK 0
strnton     2 "1.2" "2" 1 OK 0
strntoll    3 "1.2" ".2" 1 OK
strntoll    2 "1.2" "2" 1 OK

strtol    "1.23" ".23" 1 OK
strton    "1.23" "" 123 OK 0
strtoul   "1.23" ".23" 1 OK
strtoll   "1.23" ".23" 1 OK
strtonll  "1.23" "" 123 OK 0
strtoull  "1.23" ".23" 1 OK
strntol     4 "1.23" ".23" 1 OK
strntol     3 "1.23" ".23" 1 OK
strnton     4 "1.23" "3" 123 OK 0
strnton     3 "1.23" "23" 120 OK 0
strntoll    4 "1.23" ".23" 1 OK
strntoll    3 "1.23" ".23" 1 OK

strtol    "1.234" ".234" 1 OK
strton    "1.234" "" 123 OK 0
strtoul   "1.234" ".234" 1 OK
strtoll   "1.234" ".234" 1 OK
strtonll  "1.234" "" 123 OK 0
strtoull  "1.234" ".234" 1 OK
strntol     5 "1.234" ".234" 1 OK
strntol     4 "1.234" ".234" 1 OK
strnton     5 "1.234" "4" 123 OK 0
strnton     4 "1.234" "34" 123 OK 0
strntoll    5 "1.234" ".234" 1 OK
strntoll    4 "1.234" ".234" 1 OK

strtol    "1.k" ".k" 1 OK
strton    "1.k" "k" 100 OK 0
strtoul   "1.k" ".k" 1 OK
strtoll   "1.k" ".k" 1 OK
strtonll  "1.k" "k" 100 OK 0
strtoull  "1.k" ".k" 1 OK
strntol     3 "1.k" ".k" 1 OK
strntol     2 "1.k" "k" 1 OK
strnton     3 "1.k" "k" 100 OK 0
strnton     2 "1.k" "k" 1 OK 0
strntoll    3 "1.k" ".k" 1 OK
strntoll    2 "1.k" "k" 1 OK

strtol    "1.2k" ".2k" 1 OK
strton    "1.2k" "k" 120 OK 0
strtoul   "1.2k" ".2k" 1 OK
strtoll   "1.2k" ".2k" 1 OK
strtonll  "1.2k" "k" 120 OK 0
strtoull  "1.2k" ".2k" 1 OK
strntol     4 "1.2k" ".2k" 1 OK
strntol     3 "1.2k" ".2k" 1 OK
strnton     4 "1.2k" "k" 120 OK 0
strnton     3 "1.2k" "2k" 120 OK 0
strntoll    4 "1.2k" ".2k" 1 OK
strntoll    3 "1.2k" ".2k" 1 OK

strtol    "1.23k" ".23k" 1 OK
strton    "1.23k" "k" 123 OK 0
strtoul   "1.23k" ".23k" 1 OK
strtoll   "1.23k" ".23k" 1 OK
strtonll  "1.23k" "k" 123 OK 0
strtoull  "1.23k" ".23k" 1 OK
strntol     5 "1.23k" ".23k" 1 OK
strntol     4 "1.23k" ".23k" 1 OK
strnton     5 "1.23k" "k" 123 OK 0
strnton     4 "1.23k" "3k" 123 OK 0
strntoll    5 "1.23k" ".23k" 1 OK
strntoll    4 "1.23k" ".23k" 1 OK

strtol    "1.234k" ".234k" 1 OK
strton    "1.234k" "k" 123 OK 0
strtoul   "1.234k" ".234k" 1 OK
strtoll   "1.234k" ".234k" 1 OK
strtonll  "1.234k" "k" 123 OK 0
strtoull  "1.234k" ".234k" 1 OK
strntol     6 "1.234k" ".234k" 1 OK
strntol     5 "1.234k" ".234k" 1 OK
strnton     6 "1.234k" "k" 123 OK 0
strnton     5 "1.234k" "4k" 123 OK 0
strntoll    6 "1.234k" ".234k" 1 OK
strntoll    5 "1.234k" ".234k" 1 OK

;; esac
