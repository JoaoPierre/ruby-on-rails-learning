module Blackjack
  CARDS = ["other", "skip" , "two", "three", "four", "five", "six", "seven", "eigth" , "nine" , "ten","ace", "jack", "queen" , "king"]

  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    hand = []
    hand.push(self.parse_card(card1))
    hand.push(self.parse_card(card2))
    case hand.sum
    when (4..11) then "low"
    when (12..16) then "mid"
    when (17..20) then "high"
    when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when card1== "ace" && card2== "ace" then "P"
    when self.card_range(card1, card2) === "blackjack"
      case
      when self.parse_card(dealer_card) >= 10 then "S"
      else "W"
      end
    when self.card_range(card1, card2) === "high" then "S"
    when self.card_range(card1, card2) === "mid"
      case
      when self.parse_card(dealer_card) >= 7 then "H"
      else "S"
      end
    when self.card_range(card1, card2) === "low" then "H"
    end
  end
end
