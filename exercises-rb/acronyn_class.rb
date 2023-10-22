class Acronym

  REGULAR_EXPRESSION = {space_hyphen: /[\s-]+/}

  RE = REGULAR_EXPRESSION

  private_constant :RE

  private

  attr_reader :phrase
  attr_accessor :result

  def initialize(phrase)
    @phrase = phrase.upcase
    @result = ""
  end

  def self.abbreviate(phrase)
    new(phrase).abbreviate
  end

  def separated_words
    phrase.split(RE[:space_hyphen])
  end

  public

  def abbreviate
    separated_words.each do |word|
       result << word[0]
    end
    result
  end
end
