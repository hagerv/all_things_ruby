#fibonacci series using recursion

def fibR(n)
	(( n == 0 || n == 1 )? 1: fibR(n-2) + fibR(n-1))
end

puts "#{fibR(10)}"