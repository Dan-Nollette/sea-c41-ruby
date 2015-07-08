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
  m = num / 1000
  d = 0
  c = 0
  cd = 0
  cm = 0
  xc = 0
  l = 0
  xl = 0
  x = 0
  ix = 0
  v = 0
  iv = 0
  i = 0
  if num % 1000 >= 900
    cm = 1
  elsif (num % 1000 >= 400) && (num % 1000 < 500)
    cd = 1
  else
    d = (num % 1000) / 500
    c = (num % 500) / 100
  end

  if num % 100 >= 90
    xc = 1
  elsif (num % 100 >= 40) && (num % 100 < 50)
    xl = 1
  else
    l = (num % 100) / 50
    x = (num % 50) / 10
  end

  if num % 10 >= 9
    ix = 1
  elsif (num % 10 >= 4) && (num % 10 < 5)
    iv = 1
  else
    v = (num % 10) / 5
    i = (num % 5) / 1
  end
  'M' * m + 'CM' * cm + 'D' * d + 'CD' * cd + 'C' * c + 'XC' * xc +
      'L' * l + 'XL' * xl + 'X' * x  + 'IX' * ix + 'V' * v + 'IV' * iv +
      'I' * i
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
