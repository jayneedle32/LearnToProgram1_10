puts "What the hell do you want?"
answer = gets.chomp

puts ("What do you mean you '#{answer}'? You're fired!".center(100))

#---------------------------------
table_width = 40

puts ("Table of Contents".center(table_width))                
puts " "                                                 
puts ("Chapter 1:  Numbers  ".ljust(table_width/2)) + ("page 1".rjust(table_width/2))
puts ("Chapter 2:  Letters  ".ljust(table_width/2)) + ("page 72".rjust(table_width/2))
puts ("Chapter 3:  Variables".ljust(table_width/2)) + ("page 118".rjust(table_width/2))
