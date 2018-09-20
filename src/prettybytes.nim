import math, strformat

const units = ["B", "KB", "MB", "GB", "TB"]

proc prettybytes*(number: SomeNumber): string {.noSideEffect.} =
  var
    num = number.float
    suffix = ""
    prefix = ""
  if (number < 0):
    num = -number
    prefix = "-"

  let exponent = int(log10(num) / 3.0) # don't consider number less than n * 1000
  num = num / float(1000 ^ exponent)
  suffix = units[exponent]
  return fmt"{prefix}{num:g} {suffix}"