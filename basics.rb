
#ruby basics all in one file
#########################################
#a method with default args, ala c++
def methodmulti(r, a="default a", b="default b")
   puts a + " and " + b + " We got some params " + r
end
#methodmulti('its an r')

############################
#pass an array and join them to print
def method3(relation, *names)
  puts "My #{relation} include #{names.join(', ')}."
end
#method3("Uncles", "John", "Jim", "Joe")

#####################################
#can return multiple args at once
def method_multi_return()
  return "first", "second", "brant this is third"
end
#a, b, c = method_multi_return()
#puts a + " " + b + c

####################################

#a proc (lambda) 
myproc=Proc.new {|a| puts "I love #{a}!"}
#myproc.call("Ruby")

##################################

#by default the last thing used is returned
def default_ret(stuff)
   local = stuff
   local +=4
end

#default_r = default_ret(9)
#puts default_r

###################################
def procme
  new_proc = lambda { return " got into lambda " }
  new_proc.call
end
#puts procme
###################################

#a simple class.  initialize is the constructor and can take args
# i.e. Classname.new(arg, arg) 
#classes must start with a CapitalLetter
class InstantRamen
  def initialize(n, s)
    @noodle = n
    @stock = s
    puts "Made soup"
  end
  def store_noodle(new_noodle)
    @noodle = new_noodle
    puts "Got some #{@noodle} noodles"
    self.printinfo
  end
  def store_stock(new_stock)
    @stock = new_stock
    puts "Made some #{@stock} stock"
    self.printinfo
  end
  def printinfo
    puts "My ramen uses #{@noodle} noodles and #{@stock} stock with #{@toppings}"
  end
end

#ramen = InstantRamen.new("rye", "chicken")
#ramen.store_noodle("wheat")
#ramen.store_stock("Lamb")

class InstantRamen
  def toppings(top)
    @toppings = top
    self.printinfo
  end
  def printinfo
    puts "#{@stock} and #{@toppings}"
  end
end

#ramen.toppings("bacon")
###########################
#constants, they are in caps and can't be assigned via variable arg
# you set them up directly (like static vars in c++)
#assigned outside of main,its not allowed to be set in initialize i guess?
class Robot
  #class constant
  MYNAME = 'Wha'
  def initialize(name)
    @name = name
    self.mynameis
  end
  def mynameis
     puts "I am a robot and my name is #{@name} and i'm "
  end
end

#r1 = Robot.new("data")
#r2 = Robot.new("lore")

#################################
#fast way to do getter setter like ObjC
class ShowAttr
   attr_reader :myvar1, :myvar2
   attr_writer :myvar1, :myvar2
end

#s = ShowAttr.new
#s.myvar1 = "The roving buffalo"
#puts "I bought a car his name is " + s.myvar1

##############################

class Bman
  def initialize(name, location)
    @name = name
    @location = location
    @@latest = @name
    @@location = @location
    puts "Yella "
  end
  def self.latest
    @@latest  #returned here
  end
end

#b = Bman.new("Macguyver", "Seattle, WA")
#b2 = Bman.new("Murdoc", "Grand Rapids, MI")
#puts Bman.latest
########################################
#modules
module Fight
  BAMBOO = { 'life' => 100, 'hit' => 9 }
  SINATRA = { 'life' => 80, 'hit' => 19 }
  DANZA = { 'life' => 110, 'hit' => 12 }

  def intro
    puts "Frank Sinatra equips bullets and martinis"
  end

end
module Consts
  DEATH = -1
  EASY_HANDICAP = 10
  MID_HANDICAP = 20
  HARD_HANDICAP = 35
end

#what is the syntax to call module.Fight.intro?
#Fight::intro
#puts Fight::SINATRA  

##############################
#mixins - aka multi-inheritance sorta

module Move
  def run
    puts "I am running!"
  end

  def walk
    puts "Brisk walks"
  end
 
  def crawl
    puts "I crawl like a baby"
  end
end

class Man
  include Move
  def jump
    puts "I'm a man and can jump"
  end
end

class Deer
  include Move
  def jump
    puts "I'm a deer and leap like a $*#@"
  end
end

#six_million_dollar = Man.new
#six_million_dollar.jump
#six_million_dollar.crawl

###############################
#conditionals
if (true == 'true') then
  puts "There is magical type conversion true == true"
elsif (false == 0)
  puts " false the boolean and zero are synonymous"
elsif (false != true)
  puts "false and true are not the same false #{false}"
else
  puts "No more logic to see here"
end

#ternary
('yes' == 'no') ? (puts "yes is no? black is then white") : (puts "correct")
