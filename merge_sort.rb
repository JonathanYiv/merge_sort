def merge_sort(array, solution=[])
	return array if array.length < 2
	
	a = merge_sort(array.slice(0,array.length/2))
	b = merge_sort(array.slice(array.length/2, array.length - 1))
	
	until a.empty? || b.empty?
		solution << (a[0] > b[0] ? b.shift : a.shift)
	end
	solution.concat(a).concat(b)
end


=begin
	On in put of n elements
		if n < 2
			return
		else
			sort left half
			sort right half
			merge sorted halves

1) Divide: A[1..n] into two halves A[1..n/2] and A[n/2+1..n]
2) Conquer: Recursively sort the two smaller arrays
3) Combine: Merge the two sorted smaller arrays into a single sorted array
=end

puts merge_sort([3,6,8,1,5,89,0]).inspect
puts merge_sort([-1, 50, 2000, 33, -10]).inspect




=begin
until a.empty? && b.empty?
		if a.empty? && !b.empty?
			solution << b.shift
		elsif b.empty? && !a.empty?
			solution << a.shift
		else
			solution << (a[0] > b[0] ? b.shift : a.shift)
		end
	end
=end