lines = IO.readlines(ARGV.first)
lines = lines.sort_by {|l| l.length}
lines = lines.reverse
lines.each do | line |
  if (line.chomp.length > 0)
    puts line
  end	
end
