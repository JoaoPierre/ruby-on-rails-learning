class Anagram
  private

  attr_reader :target

  def initialize(target)
    @target = target.downcase.chars
  end

  public

  def match(array_possible_anagrams)
    anagrams = []
    array_possible_anagrams.each do |word|
      if word.downcase.chars.sort == target.sort && word.downcase.chars != target
        anagrams.push(word)
      end
    end
    anagrams
  end
end
