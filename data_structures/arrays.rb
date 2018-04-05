#arrays are ds that contains a group of elements of the same type.

my_integers = [1,2,3,4,5]
puts my_integers [0] #1

#push and pop elements in an array
shopping_list = ["Pineapples", "Oranges","Mangoes", "Bananas"]
puts shopping_list [3] #Bananas
shopping_list.push("Kiwi")
puts shopping_list.join(' ,')
shopping_list << "One more fruit"
puts shopping_list.join(' ,')
shopping_list.pop 
puts shopping_list.join(' ,')