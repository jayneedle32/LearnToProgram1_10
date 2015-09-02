bottles = 99

while bottles > 1
print "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer. Take one down, pass it around, #{bottles} bottles of beer on the wall! "
bottles -= 1
end

if bottles == 1
print"#{bottles} bottle of beer on the wall. #{bottles} bottle of beer. Take one down, pass it around, #{bottles} bottle of beer on the wall! "
end

# ---------------------------------------------

puts "Start chatting with grammy!"
answer = gets.chomp

while answer != "BYE"

if answer == answer.upcase
    year = rand(99) + 1900
    puts "NO, NOT SINCE #{year}!"
    answer = gets.chomp

else
    puts "HUH?!  SPEAK UP, SONNY!"
    answer = gets.chomp
    
end
end

puts "OK, BYE NOW!"

#--------------------------------------------------------


puts "Start chatting with grammy!"
answer1 = gets.chomp

while answer1 != "BYE"

if answer1 == answer1.upcase
    year1 = rand(99) + 1900
    puts "NO, NOT SINCE #{year1}!"
    answer1 = gets.chomp

else
    puts "HUH?!  SPEAK UP, SONNY!"
    answer1 = gets.chomp
    
end
end

puts "HUH?!  SPEAK UP, SONNY!"
answer2 = gets.chomp

while answer2 != "BYE"

if answer2 == answer2.upcase
    year2 = rand(99) + 1900
    puts "NO, NOT SINCE #{year2}!"
    answer2 = gets.chomp

else
    puts "HUH?!  SPEAK UP, SONNY!"
    answer2 = gets.chomp
    
end
end

puts "HUH?!  SPEAK UP, SONNY!"
answer3 = gets.chomp

while answer3 != "BYE"

if answer3 == answer3.upcase
    year3 = rand(99) + 1900
    puts "NO, NOT SINCE #{year3}!"
    answer3 = gets.chomp

else
    puts "HUH?!  SPEAK UP, SONNY!"
    answer3 = gets.chomp
    
end
end

puts "OK, BYE NOW!"
