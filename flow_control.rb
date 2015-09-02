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
