class Complement

  DNA_NUCLEOTIDES = "GCTA"
  RNA_NUCLEOTIDES = "CGAU"

  def self.of_dna(dna)
    new(dna).of_dna
  end

  private

  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  public

  def of_dna
    transcripted = dna.tr(DNA_NUCLEOTIDES, RNA_NUCLEOTIDES)
  end
end
