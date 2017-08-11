# interface.rb

# Pseudo-code:
# 1. Print welcome
# 2. Get horses 🐴
# 3. Get user's bet
# 4. Run the race 🐴
# 5. Print results
puts "welcome"

# horses = {
#   1: "toto",
#   2: "titi",
#   3: "tata"
# }

# puts "Choose your horse !"
# puts
relaunch = ""
race = ""
bet = ""
horses = ["toto", "tata", "titi", "tutu"]

while relaunch == ""
  puts "Choose your horse !"
  puts horses.each_with_index { |horse, index| horse[index] }
  bet = gets.chomp

  sleep(1) puts "wait for it"
  sleep(1) puts "almost there !!!"

race = horses.sample
  if race == bet
    puts "YOU WON"
  else
    puts "YOU LOST"
  end

puts "The winner is #{race}"
puts "Press enter to play again"
relaunch = gets.chomp
end

