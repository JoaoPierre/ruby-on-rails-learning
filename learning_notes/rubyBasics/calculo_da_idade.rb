data_de_nascimento = ARGV.first.to_i

idade = Time.now.year - data_de_nascimento

puts "Sua idade é de #{idade} #{idade == 1? "ano.": "anos."}"