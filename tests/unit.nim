import math, unittest, prettybytes, strformat

suite "prettybytes":
  test "converts bytes to human readable strings":
    check:
      prettybytes(0.4) == "0.4 B"
      prettybytes(10) == "10 B"
      prettybytes(10.1) == "10.1 B"
      prettybytes(999.0) == "999 B"
      prettybytes(1001.0) == "1.001 KB"
      prettybytes(10.0^16) == "10 PB"

  test "supports negative number":
    check:
      prettybytes(-0.4) == "-0.4 B"
      prettybytes(-10.0) == "-10 B"
      prettybytes(-10.1) == "-10.1 B"
      prettybytes(-999.0) == "-999 B"
      prettybytes(-1001.0) == "-1.001 KB"
