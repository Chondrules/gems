class FizzBuzz
  def doit(first, second, num)
    # print numbers in order from 1.  If the next
    # number is divisible by @first print Fizz
    # if the number is divisible by @second print buzz
    # if both print fizz buzz
    (1..num).each do |value|
      if (value != num && value != 1)
          print " "
      end 
      if (value % first == 0) and (value % second == 0) then
         print "FB"
      elsif (value % first) == 0
         print "F"
      elsif (value % second) == 0
         print "B"
      else
         print value.to_s
      end
    end
    puts
  end
end


fb = FizzBuzz.new()

#slurp up the input file
IO.foreach(ARGV.first) {|line| a,b,c = line.split
                        fb.doit(a.to_i, b.to_i, c.to_i) }
