fruits = ["mango", "papaya", "orange"]  #creating an array
puts fruits

fruits << "apricot"    #pushing an element to array
puts fruits

puts fruits.last       #.last returns the last element of the array
						
fruits.sort 						#returns a new array with the items sorted in an alphabetical order


fruits.sort!						# sorts the array in an alphabetical order, overwrites the original one with the sorted one
puts fruits

fruits.unshift("apple")	#unshift will add a new item to the beginning of an array
puts fruits

fruits.insert(3, 'guava')
puts fruits