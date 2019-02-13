#arrays are ds that contains a group of homogeneous elements .

my_integers = [1,2,3,4,5]
shopping_list = ["Pineapples", "Oranges","Mangoes", "Bananas"]


#Basic Operations 
#1.Traverse
shopping_list.each {|x| puts x }
puts "Reading through my list one by one", shopping_list

#2.Insert
shopping_list.push("Kiwi")
puts "After adding kiwi fruits, my shopping list is", shopping_list

#3.Delete
shopping_list.delete("Mangoes")
puts "After buying mangoes, my shopping list is", shopping_list

#4.Search
x = shopping_list.include?'Oranges'
puts "Trying to find Oranges in this list", x

#5.Update
shopping_list[1] = "Watermelon"
puts "Watermelons are in season and oranges are not, let me update that", shopping_list