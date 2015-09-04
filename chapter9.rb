
puts "Enter your birth year"
year = gets.chomp

puts "Enter your birth month"
month = gets.chomp

puts "Enter your birth day"
day = gets.chomp

time = Time.new

ageSeconds = time - Time.mktime(year, month, day) 

yearSeconds = 31536000

age = ageSeconds / yearSeconds

age = age.to_i

puts age

#------------------------------------
