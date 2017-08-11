store = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}

# puts "--------------------
# Welcome to Instacart
# --------------------"

# puts "In our store today: "
# store.each do |key, value|
#   puts "#{key} : #{value}€"
# end
# puts "--------------------"

# product = ""
# total = 0
# cart = {}

# while product != "quit"
#   puts "Which item?"
#   cart[key] = gets.chomp
#   puts "How many?"
#   cart[value] = gets.chomp

#   if cart[key] == "quit"
#     puts "TOTAL = #{cart[product]} x #{cart[quantity]} = #{total}"
#     break
#   end

#   if store.has_key?(product.to_sym)
#                                                                                 cart << product.to_sym
#     total = cart.map {|product| store[product] }.reduce(:+)
#   else
#     puts "Sorry, we don't have #{product} today.."
#   end
# end

puts "--------------------
Welcome to Instacart
--------------------"

puts "In our store today: "
store.each do |key, value|
  puts "#{key} : #{value}€"
end
puts "--------------------"

product = ""
total = 0
cart = []

while product != "quit"
  puts "Which item?"
  product = gets.chomp

  if product == "quit"
    "TOTAL is #{total}"
    break
  end

  if store.has_key?(product.to_sym)
    cart << product.to_sym
    total = cart.map {|product| store[product] }.reduce(:+)
  else
    puts "Sorry, we don't have #{product} today.."
  end
end

kiwi_count = cart.count(:kiwi)
banana_count = cart.count(:banana)
mango_count = cart.count(:mango)
asparagus_count = cart.count(:asparagus)

puts "-" * 30
puts '*'*6 + "BILL" + '*'*6
puts "-" * 30

puts "Kiwi : #{kiwi_count} x #{store[:kiwi]} = #{kiwi_count*store[:kiwi]}€" if kiwi_count != 0
puts "Banana : #{banana_count} x #{store[:banana]} = #{banana_count*store[:banana]}€" if banana_count != 0
puts "Mango : #{mango_count} x #{store[:mango]} = #{mango_count*store[:mango]}€" if mango_count != 0
puts "Asparagus : #{asparagus_count} x #{store[:asparagus]} = #{asparagus_count*store[:asparagus]}€" if asparagus_count != 0

puts "TOTAL = #{total}€"
