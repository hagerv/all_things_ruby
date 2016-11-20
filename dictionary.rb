puts "Enter a fun string or sentence: "
words = gets.chomp.downcase.gsub(/[^a-z0-9\s]/, '')

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(words, dictionary)
	results = Hash.new(0)

	dictionary.each do |word|
		results[word] = words.scan(word).count
	end

	puts results
end

substring(words, dictionary)