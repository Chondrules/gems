
#ruby basics all in one file
#begin/end blocks i love you

#########################################
#a method with default args, ala c++
begin
def methodmulti(r, a="default a", b="default b")
   puts a + " and " + b + " We got some params " + r
end
methodmulti('its an r')
end if (false)

############################
#pass an array and join them to print
begin
def method3(relation, *names)
  puts "My #{relation} include #{names.join(', ')}."
end
method3("Uncles", "John", "Jim", "Joe")
end if (false)

#####################################
#can return multiple args at once
begin
def method_multi_return()
  return "first", "second", "brant this is third"
end
a, b, c = method_multi_return()
puts a + " " + b + c
end if (false)
####################################

#a proc (lambda) 
begin
myproc=Proc.new {|a| puts "I love #{a}!"}
myproc.call("Ruby")
end if (false)
##################################

#by default the last thing used is returned
begin
def default_ret(stuff)
   local = stuff
   local +=4
end
default_r = default_ret(9)
puts default_r
end if (false)

###################################
begin
def procme
  new_proc = lambda { return " got into lambda " }
  new_proc.call
end
puts procme
end if (false)
###################################

#a simple class.  initialize is the constructor and can take args
# i.e. Classname.new(arg, arg) 
# NOTE: classes must start with a CapitalLetter
begin
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

ramen = InstantRamen.new("rye", "chicken")
ramen.store_noodle("wheat")
ramen.store_stock("Lamb")

class InstantRamen
  def toppings(top)
    @toppings = top
    self.printinfo
  end
  def printinfo
    puts "#{@stock} and #{@toppings}"
  end
end

ramen.toppings("bacon")
end if (false)

###########################
#constants, they are in caps and can't be assigned via variable arg
# you set them up directly (like static vars in c++)
#assigned outside of main,its not allowed to be set in initialize i guess?
begin
class Robot
  #class constant ALL CAPS, static across all instances?
  MYNAME = 'Wha'
  def initialize(name)
    @name = name
    self.mynameis
  end
  def mynameis
     puts "I am a robot and my name is #{@name} and i'm "
  end
end

r1 = Robot.new("data")
r2 = Robot.new("lore")
end if (false)

#################################
#fast way to do getter setter like ObjC
begin
class ShowAttr
   attr_reader :myvar1, :myvar2
   attr_writer :myvar1, :myvar2
end

s = ShowAttr.new
s.myvar1 = "The roving buffalo"
puts "I bought a car his name is " + s.myvar1
end if (false)

##############################
begin
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

b = Bman.new("Macguyver", "Seattle, WA")
b2 = Bman.new("Murdoc", "Grand Rapids, MI")
puts Bman.latest
end if (false)
########################################
#modules
begin
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

puts Fight::SINATRA  
end if (false)
##############################
#mixins - aka multi-inheritance sorta
begin
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

six_million_dollar = Man.new
six_million_dollar.jump
six_million_dollar.crawl
end if (false)

###############################
#conditionals
begin
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

#reverse of an if, essentially if !(expr) I think
unless ("I am true" == "I am true") then
  puts "bug bug"
else
  puts "We are correctness"
end

#statement modifiers, place if at the end of the line
dealer = 18
puts "A king and a nine is what i've got" if 19 > dealer
puts "An ace and a 4 can only be 15, can't win" if 15 > dealer
end if (false)

#######################################
#case statements
# no ':' wanted after the per case value
# for if statements you need a (:, then, or newline)
# i don't see yet how to make "when x: thingy" all on one line work
begin
potato = 1221

case potato
when 1234
  puts "Wrong tater";
when 23
  puts "you can't eat just one";
else
  puts "You will eat #{potato} potatoes" 
end
end if (false)
#########################
#case statement on steriods, more like an if nest
#it really hates colons at the end of the when...
#also 'or' doesn't appear to work for logic, just ||
begin
the_answer = 42
case
when the_answer < 40
  puts "The answer is not complete yet"
when the_answer > 50 || the_answer == nil
  puts "It has been too long, ask again"
when the_answer == 42
  puts "The answer is #{the_answer}"
else
  puts "NONE OF THE ABOVE"
end
end if (false)

##############################
#io

begin

puts "hi give me a word"
STDOUT.flush
#read a bunch of chars, spaces at end are not dropped.
name = gets.chomp
puts "I thought I recognized you " + name + " you carry the flavor triangle"

end if (false)

############################
#loops, again, ruby 2 hates : at the end of a line.
# i like that but this book sucks hockey pucks with : everywhere
begin
x = 0
while(x < 10)
  print x.to_s
  x += 1
end
puts ""
#the reverse while
until (x == 0)
  print x.to_s
  x -= 1
end
puts 
end if (false)

#######################
#for loops, work on collections like python
#note that the iterator is a copy so won't damage the collection
begin

evens = [2,4,6,8,10]
for num in evens
   print num.to_s + ", "
end
puts

#another way, a nicer way
odds = [1,3,5,7,9,11]
odds.each do |beodd|
  print beodd.to_s + ", "
end
puts
end if (false)
####################
#break in a loop works on a modifier expression
begin
x = 10
y = 100

while (x < y)
  x += 1
  puts "x=" + x.to_s
  break if y % x == 0
end
end if (false)

###########################
#exceptions with rescue
begin
def bad_method
  stringy = "I am a thing in existance"
  stringy.this_cant_be
rescue NoMethodError
  puts "There's no method for your arg usage"
rescue Exception
  puts 'This catches all exceptions'
end

bad_method
end if (false)
##################################
#ensure  -  it always happens if you got one.
begin
def dance
  yell = "woot!".upcase!
  "invader zim yells".get_it_off_me
rescue NoMethodError
  puts "You can't do that on TV"
rescue Exception
  puts "I fell down"
else
  print yell
ensure
  puts " That's all you got"
end
dance

#nested rescue to the rescue and all on one line.  It is really nested or iteated?
not_a_thing.do_thing rescue what.thefuck rescue puts "one liner Crash"
end if (false)
##############################
#how do i do that again, retry
begin
def send_present
  if (@present)
    self.send("A box of candy")
  else 
    puts "send them a nice card instead with panda sex"
  end
rescue
  @present = false
  retry
end
send_present
end if (false)
##################################
#raise an error, outloud.. and catch it
begin
def raiseme(doit)
  if (doit == true)
    raise NoMethodError, "You shouldn't do this"
  end
rescue NoMethodError
  puts "I see you got raised, you should go sleep instead"
end
raiseme(false)
raiseme(true)
end if (false)

#####################
#file io
begin
basics = "basics.rb"
if File.file?(basics)
  puts basics + " is " + File.size?(basics).to_s + " bytes in size"
end
if File.directory?("/Users2/")
  puts "/Users2 is a directory"
end
end if (false)

#print this file duh
begin
myfile = File.open("basics.rb", "r")
myfile.each_line {|l| puts l}
myfile.close
end if (false)

#rad, just rad
begin
IO.foreach("basics.rb") {|line| puts line}
end if (false)
##############################
#threads
begin
first = Thread.new() do
  myindex = 0
  while(myindex < 10)
    puts "Thread One!"
    sleep 1
    myindex += 1
  end 
end

#hlrb says we don't need it but it won't run if we don't join
first.join()
end if (false)

####################
#thread.pass
begin
t1 = Thread.new { print "w"; Thread.pass; print "a" }
t2 = Thread.new { print "e"; Thread.pass; print "l" }
t1.join
t2.join
puts
end if (false)

##############
#thread stopping/resuming, again, just awesome
mate = Thread.new do
  puts "Ahoy! Can I be dropping the anchor sir?"
  Thread.stop
  puts "Aye sir, dropping anchor!"
  end
Thread.pass
puts "CAPTAIN: Aye, laddy!"
mate.run
mate.join

