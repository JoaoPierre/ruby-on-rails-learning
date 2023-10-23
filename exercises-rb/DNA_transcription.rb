class Complement

  TRANSCRIPTION =
  {"G" => "C",
   "C" => "G",
   "T" => "A",
   "A" => "U"}

  def self.of_dna(dna)
    new(dna).of_dna
  end

  private

  attr_reader :dna

  def initialize(dna)
    @dna = dna.chars
  end

  public

  def of_dna
    transcripted = ""
     dna.each do |nucleotide|
      transcripted << TRANSCRIPTION[nucleotide]
    end
    transcripted
  end
end
