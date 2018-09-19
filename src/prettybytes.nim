import math
import strutils
import strformat

var
  units: array[0..4, string]

units = ["B", "KB", "MB", "GB", "TB"]

proc prettybytes*(number: var float): string =
  var suffix = ""
  var prefix = ""
  if (number < 0):
    number = -number
    prefix = "-"

  let exponent = int(log10(number) / 3) # don't consider number less than n * 1000
  number = number / float(1000 ^ exponent)

  suffix = units[exponent]
  return fmt"{prefix}{number} {suffix}"