
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

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.
    puts @name + ' is born.'
    
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

puts "What would you like to name your dragon?"
    dragonName = gets.chomp
    
pet = Dragon.new dragonName

puts "You can interact with you dragon by typing: Feed | Walk | Nap | Toss | Rock"
action = gets.chomp

while action != "Leave"

if action == "Feed"
    pet.feed
    
elsif action == "Walk"
    pet.walk
    
elsif action == "Nap"
    pet.putToBed
    
elsif action == "Toss"
    pet.toss
    
elsif action == "Rock"
    pet.rock

else
    puts "Cannot perform that action."
end 

action = gets.chomp

end

#-----------------------------------------------------

class OrangeTree

def initialize
    @tall = 0
    @age = 0
    @fruit = 0
    puts "You have planted an orange tree!"
end

def height
    puts 'The tree is ' + @tall.to_s + ' feet tall.'
end

def treeAge
    puts 'The tree is ' + @age.to_s + ' years old.'
end

def countOranges
    puts 'The tree has ' + @fruit.to_s + ' oranges.'
end

def pickOranges amount
    @fruit -= amount
    puts 'You have picked ' + amount.to_s + ' oranges from the tree.'
    if @fruit == 0
    puts "You picked the tree bare!"
    elsif @fruit < 0
    puts "You didn't have enough oranges, so you borrowed some from your neighbors tree."
    end
end

def oneYearPasses
    @age += 1
    @fruit = 0
    if @tall < 18
    @tall += 3
    else
        if @age == 7
        @fruit = 50
        elsif @age == 8
        @fruit = 50
        elsif @age == 9 
        @fruit = 100
        elsif @age == 10
        @fruit = 100
        elsif @age == 11
        @fruit = 200
        elsif @age == 12
        @fruit = 200
        else
        puts "The tree has died..."
        exit
        end
    end
end

end

tree = OrangeTree.new

puts "Press enter to simulate a year passing."
answer = gets.chomp 

while answer == ""
    puts "One year has passed"
    tree.oneYearPasses
    tree.height
    tree.countOranges
    tree.treeAge
    puts "If you have some oranges, take some. How many do you want to pick this year? Or type 'none' to simulate another year. Either way another year will be simulated."
    oranges = gets.chomp
    if oranges == "none"
        answer = ""
    else
    tree.pickOranges(oranges.to_i)
    tree.countOranges
    end
end
