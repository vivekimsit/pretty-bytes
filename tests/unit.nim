import unittest, prettybytes

suite "humanize":
  test "converts bytes to human readable strings":
    var number = 10.0
    check prettybytes(number) == "10B"

  test "converts bytes to human readable strings":
    var number = 1000.0
    check prettybytes(number) == "1KB"
