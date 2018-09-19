import unittest, prettybytes

suite "humanize":
  test "converts bytes to human readable strings":
    var number = 10.0
    check prettybytes(number) == "10.0 B"

  test "converts bytes to human readable strings":
    var number = 100.0
    check prettybytes(number) == "100.0 B"

  test "converts bytes to human readable strings":
    var number = 1000.0
    check prettybytes(number) == "1.0 KB"

  test "converts bytes to human readable strings":
    var number = 10000.0
    check prettybytes(number) == "10.0 KB"

  test "converts bytes to human readable strings":
    var number = 1000000.0
    check prettybytes(number) == "1.0 MB"

  test "converts bytes to human readable strings":
    var number = 1200000.0
    check prettybytes(number) == "1.2 MB"

  test "converts bytes to human readable strings":
    var number = -1200000.0
    check prettybytes(number) == "-1.2 MB"
