puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is you last name?"
last_name = gets.chomp

puts "Hello #{first_name} #{middle_name} #{last_name}!"

# ----------------------------------------------------------

puts "What is your favorite number?"
favorite_number = gets.chomp

better_number = favorite_number.to_i + 1

puts "#{better_number} is a bigger and better favorite number..."
