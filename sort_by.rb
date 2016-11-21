def bubble_sort_by(array)
	a_length = array.length
	change = true

	while change do
		change = false
		for i in 1..a_length
			if yield(array[i], array[i-1]) < 0
				array[i-1], array[i] = array[i], array[i-1]
				change = true
			end
		end
	end
	puts array
end

bubble_sort_by(["hey", "hello", "hi","howdy", "sup"]) {|left, right| left.to_s.length - right.to_s.length}

