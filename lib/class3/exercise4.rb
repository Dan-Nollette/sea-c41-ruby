# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.

year = 1900

while year <= 2000
  puts "#{year}" unless year % 25 == 0 && year % 16 != 0 if year % 4 == 0
  year += 1
end
