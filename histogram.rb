puts "Give me something to work with?"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|k, v| v}
frequencies.reverse!
frequencies.each do |word, frequency| 
    puts word + " " + frequency.to_s
end