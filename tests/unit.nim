import unittest, prettybytes, strformat

suite "humanize":
  test "converts bytes to human readable strings":
    check prettybytes(10.0) == "10 B"

  test "converts bytes to human readable strings":
    check prettybytes(100.0) == "100 B"

  test "converts bytes to human readable strings":
    check prettybytes(1000.0) == "1 KB"

  test "converts bytes to human readable strings":
    check prettybytes(10000.0) == "10 KB"

  test "converts bytes to human readable strings":
    check prettybytes(1000000.0) == "1 MB"

  test "converts bytes to human readable strings":
    check prettybytes(1200000.0) == "1.2 MB"

  test "converts bytes to human readable strings":
    check prettybytes(-1200000.0) == "-1.2 MB"
