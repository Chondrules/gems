sum = 0
lines = IO.foreach(ARGV.first) { | line | sum += line.to_i}
puts sum
