class InvalidCodonError < ArgumentError
end

class Translation
  PROTEIN_STRAND_SIZE = 3

  CODONS_TO_PROTEINS = {"AUG" => "Methionine",
                        "UUU" => "Phenylalanine",
                        "UUC" =>	"Phenylalanine",
                        "UUA" => "Leucine",
                        "UUG" => "Leucine",
                        "UCU" => "Serine",
                        "UCC" => "Serine",
                        "UCA" => "Serine",
                        "UCG" => "Serine",
                        "UAU" => "Tyrosine",
                        "UAC" => "Tyrosine",
                        "UGU" => "Cysteine",
                        "UGC" => "Cysteine",
                        "UGG" => "Tryptophan",
                        "UAA" => "STOP",
                        "UAG" => "STOP",
                        "UGA" => "STOP"}

  CTP = CODONS_TO_PROTEINS

  private_constant :CTP

  def initialize strand
    @strand = strand.chars.each_slice(PROTEIN_STRAND_SIZE).map(&:join)
  end

  attr_reader :strand

  def self.of_rna(strand)
    new(strand).of_rna
  end

  def of_rna
    result = []
    strand.each do |codons|
      raise InvalidCodonError if CTP[codons].nil?
      break if CTP[codons] == "STOP"
      result.push(CTP[codons])
    end
    result
  end
end
