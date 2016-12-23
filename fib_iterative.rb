# fibonacci series using iteration and a loop

def fib(n)
	fib, fib_prev = 1,0
	puts "#{fib_prev}"
	puts "#{fib}"
	n.times do |fib_next|
		fib_next = fib+fib_prev
		fib_prev, fib = fib, fib_next
		puts "#{fib}"
	end
end

fib(10)