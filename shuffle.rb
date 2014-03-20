class Deck
  def initialize(cards)
    @cards = cards
  end

  def perfect_shuffle()
    #split the deck take the top half and alternate entries with the second half
    puts @cards.count
    @cards1 = @cards.take(@cards.count/2)
    @cards2 = @cards.drop(@cards.count/2)
    @cards1.each {|c| print "#{c}, "}
    @cards2.each {|c| print "#{c}, "}
    #iterate over both sets alternating placing a card
    #puts @cards2
  end
  
  def to_s
    @cards.each {|card| print "#{card}, "}
  end
end

#more cleaver full name generation next..
d = Deck.new(1..52)
d.perfect_shuffle()
