import math
import strutils

var
  units: array[0..4, string]

units = ["TB", "GB", "MB", "KB", "B"]
proc prettybytes*(number: var float): string =
  if (number < 0):
    number = -number

  var suffix = units[4]
  if number >= 1000:
    let exponent = int(log10(number))
    number = int(number) / (10^exponent)
    suffix = units[exponent]

  return "$1$2" % [intToStr(int(number)), suffix]