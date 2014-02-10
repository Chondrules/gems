require 'csv'

class Player
  def initialize(player, year, team)
    @player = player
    @year = year
    @team = team
  end
  def to_s
    puts "#{@player}, #{@year}, #{@team}"
  end
end

class Csvme
  def initialize
    @players = []
  end

  def getplayers(file)
    CSV.foreach(file, headers: true) do |row|
      @players << Player.new(row["playerID"], row["yearID"], row["teamID"])
    end
    @players.each {|p| print p.to_s}
  end
end

c = Csvme.new
c.getplayers("AllstarFull.csv")
