
words = []

puts "Type one words and press enter to add it to the list. To return list in ABC order, press enter without typing anything."
answer = gets.chomp
words.push answer.capitalize

while answer != ""
answer = gets.chomp
words.push answer.capitalize
end

words.sort

#---------------------------------------

table_width = 40
table = [["1", "2", "3"], ["Numbers", "Letters", "Variables"], ["1", "72", "118"]


puts ("Table of Contents".center(table_width))                
puts " "  
table[0].each { |chapter|
table[1].each { |title|
table[2].each { |page|
puts ("Chapter #{chapter}:  #{title}  ".ljust(table_width/2)) + ("page #{page}".rjust(table_width/2))
}}}

# ^this didn't work the way I wanted to, see below for correct code

toc = ["Table of Contents","Chapter 1: Getting Started", "page 1", 
"Chapter 2: Numbers", "page 9", "Chapter 3: Letters", "page 13"]
line_width = 60
i = 0

puts(toc[0].center(line_width))
puts ""
until i == 6
puts(toc[i += 1].ljust(line_width/2) + toc[i += 1].rjust(line_width/2))
end

