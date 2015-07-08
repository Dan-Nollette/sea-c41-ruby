#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  mS = num / 1000

  if
    num % 1000 >= 900
    cMS = 1
    dS = 0
    cS = 0
    cDS = 0
  elsif (num % 1000 >= 400) && (num % 1000 < 500)
    cDS = 1
    cMS = 0
    cS = 0
    dS = 0
  else
    cDS = 0
    cMS = 0
    dS = (num % 1000) / 500
    cS = (num % 500) / 100
  end

  if
    num % 100 >= 90
    xCS = 1
    lS = 0
    xS = 0
    xLS = 0
  elsif (num % 100 >= 40) && (num % 100 < 50)
    xLS = 1
    xCS = 0
    xS = 0
    lS = 0
  else
    xCS = 0
    xLS = 0
    lS = (num % 100) / 50
    xS = (num % 50) / 10
  end

  if
    num % 10 >= 9
    iXS = 1
    iS = 0
    vS = 0
    iVS = 0
  elsif (num % 10 >= 4) && (num % 10 < 5)
    iVS = 1
    iXS = 0
    iS = 0
    vS = 0
  else
    iVS = 0
    iXS = 0
    vS = (num % 10) / 5
    iS = (num % 5) / 1
  end
  return 'M' * mS + 'CM' * cMS + 'D' * dS + 'CD' * cDS + 'C' * cS + 'XC' * xCS + 'L' * lS + 'XL' * xLS + 'X' * xS  + 'IX' * iXS + 'V' * vS + 'IV' * iVS + 'I' * iS
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
