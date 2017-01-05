def merge_sort(in_array)
	return in_array if in_array.size == 1
	halfway = (in_array.size/2).floor
	merge(merge_sort(in_array[0..halfway-1]), merge_sort(in_array[(halfway)..-1]))
end

def merge(arr1, arr2)
	sorted = []
	while (!arr1.empty? && !arr2.empty?)
		if arr1.first < arr2.first
			sorted << arr1.shift
		else
			sorted << arr2.shift
		end
	end
	sorted + arr1 +arr2
end

p merge_sort([2,7,8,4,5,29,0,2])
p merge_sort([1,2,3,5,6,4,3,2])
p merge_sort([9,8,7,5,3,2,1,0])
p merge_sort([1])