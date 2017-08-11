# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user

# 2. Ask user for the first number

# 3. Get user answer
# 4. Ask user for second number
# 5. Get user answer (variable)
# 6. Ask user for operation
# 7. calculer l'operation
# 8. print the result
require_relative "calculator"

relaunch = ""

puts "Hello"

while relaunch == "" do
  puts "Enter a first number"
  first_number = gets.chomp.to_i

  puts "Enter a second one"
  second_number = gets.chomp.to_i

  puts "Choose operation [+][-][x][/]"
  operator = gets.chomp

result = calculate(first_number, second_number, operator)

  puts "Result: #{result}"
  puts "press enter to relaunch"
  relaunch = gets.chomp
end




# your_message = ""
# until your_message == "I am going to work right now!"
#   puts "what do you want?"
#   your_message = gets.chomp
#   puts coach_answer(your_message)
# end






