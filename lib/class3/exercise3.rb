# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

talking = true
in_a_row = 0
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
while talking
  message = gets.chomp
  if message == 'BYE'
    in_a_row += 1
    if in_a_row == 3
      talking = false
      puts 'Nana: BYE SWEETIE!'
    else
      puts "Nana: HOW'S SCHOOL GOING?"
    end
  else
    in_a_row = 0
    if message != message.upcase
      puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    else
      year = 1930 + rand(21)
      puts "Nana: NOT SINCE #{year}!"
    end
  end
end
