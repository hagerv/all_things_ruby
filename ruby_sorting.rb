# implement a method for bubble sorting

def bubble_sort(array)
	a_length = array.length

	loop do
		changed = false

		(a_length-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				changed = true
			end
		end

		break if not changed
	end
	array
end


puts bubble_sort([8, 23, 4, 5, 7, 10, 1])

def bubble_sort_by(array)
	a_length = array.length
	puts "#{a_length}"

	#break array into elemental pairs
	(a_length-1).times do |i|
		short_array = [array[i], array[i+1]]

	#call block to compare 2 elements
		value = yield(short_array)
	#change if necessary
		case value
		when value > 0
			array[i], array[i+1] = array[i+1], array[i]
			puts "#{value}"
		else
			next
		end
	end
	array
end

bubble_sort_by {|left, right| left.length-right.length}

string_array = ["hi", "hello", "hey"]

puts bubble_sort_by(string_array)

