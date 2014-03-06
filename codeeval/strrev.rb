
IO.foreach(ARGV.first) {|line| next if line.chomp.empty?
                        rev = line.split.reverse.join(" ")
                        puts rev}
