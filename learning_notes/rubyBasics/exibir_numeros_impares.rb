min= ARGV.first.to_i
max= ARGV.last.to_i

(min..max).each do |num|
puts "#{num.odd? ? num : ""}"
end