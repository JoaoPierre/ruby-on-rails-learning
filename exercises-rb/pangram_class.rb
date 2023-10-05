class Pangram
  REGULAR_EXPRESSION = {
    only_letters_downcase: /[a-z]/
  }

  ARRAY_ALL_LETTERS = ("a".."z").to_a

  def self.pangram?(sentence)
    new(sentence).pangram?
  end

  def pangram?
    ARRAY_ALL_LETTERS == chars_on_sentence
  end
  private

  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence.downcase
  end

  def chars_on_sentence
    sentence.scan(REGULAR_EXPRESSION[:only_letters_downcase]).sort.uniq
  end
end
