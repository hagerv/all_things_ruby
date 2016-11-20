#doesn't maintain case or punctuation yet; but does accomplish the bare minimum of rotating letters

puts "String please: "
text = gets.chomp.downcase.gsub(/[^a-z0-9\s]/i, '')

puts "Number please: "
n = gets.chomp.to_i

def cipher(text, n)
	alpha = ('a'..'z').to_a
	key = Hash[alpha.zip(alpha.rotate(n))]
	new_text = text.split(" ")

	new_text.each do |word|
	    print word.each_char.inject("") { |newtext, char| newtext.to_s + key[char].to_s }
	    print " "
	end
end

cipher(text,n)