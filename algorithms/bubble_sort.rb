#bubble sort simple sorting algorithm that repeatedly steps through the list, compares adjacent pairs and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.

#Time complexity is 0(n^2)

# Enclose the code into a function, for easier reuse.
def bubble_sort(array)
  sorted = false
  until sorted
    swapped = false
    array.each_with_index do |x,i|
      break if i == array.length - 1    
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] #swap items
        swapped = true
      end
    end
    sorted = ! swapped #array is sorted when no more items were swapped
  end
  array
end

print bubble_sort [4, 7, 2, 1, 3, 9]