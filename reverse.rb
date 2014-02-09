class R
  def initialize(s)
    @my_s = s
    @rev_s = ""
  end

  def reverse()
    return if @my_s.empty?
    @rev_s = ""
    recurse(@my_s)
    puts "before: #{@my_s} after: #{@rev_s}"
  end

  def recurse(s)
    return if s.empty?
    @rev_s += s[-1]
    #range .. inclusive, ... exclusive
    recurse(s[0...-1])
  end
end

r = R.new("ABCDE")
r.reverse()
