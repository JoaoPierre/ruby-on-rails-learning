class Acronym
  REGULAR_EXPRESSION = {space_hyphen: /[\s-]+/}

  RE = REGULAR_EXPRESSION

  private_constant :RE

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.upcase
  end

  def self.abbreviate(phrase)
    new(phrase).abbreviate
  end

  def separated_words
    phrase.split(RE[:space_hyphen])
  end

  def abbreviate
    result = ""
    separated_words.each do |word|
      result << word[0]
    end
    result
  end
end
