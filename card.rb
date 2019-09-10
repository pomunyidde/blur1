class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @cards = []
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['flowers', 'hearts', 'spades', 'diamonds']
  end 

  def shuffle
    @cards.shuffle!
  end  

  def output
    @cards.each do |card|
      card.output_card
    end  
  end 

  def deal (number)
    number.times {@cards.shift.output_card}
  end  
end

deck = Deck.new 
card.shuffle
deck.deal(6)
