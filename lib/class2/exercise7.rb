# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'
line_one = 'Table of Contents'.center(50)
line_two = 'Chapter 1:  Getting Started'
line_two += 'page  1'.rjust(50 - line_two.length)
line_three = 'Chapter 2:  Numbers'
line_three += 'page  9'.rjust(50 - line_three.length)
line_four = 'Chapter 3:  Letters'
line_four += 'page 13'.rjust(50 - line_four.length)
puts line_one
puts line_two
puts line_three
puts line_four
