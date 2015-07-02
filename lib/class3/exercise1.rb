# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

bottles = 3
while bottles > 0
  plural = "bottles"
  single = "bottles"
  less = bottles - 1
  single = "bottle" if bottles == 2
  if bottles == 1
    less = 'no more'
    plural = "bottle"
  end
  puts "#{bottles} #{plural} of beer on the wall, #{bottles} #{plural} of beer!
Take one down, pass it around, #{less} #{single} of beer on the wall!"
  bottles -= 1
end

puts 'No more bottles of beer on the wall, no more bottles of beer!
Go to the store and buy some more, 3 bottles of beer on the wall!'
