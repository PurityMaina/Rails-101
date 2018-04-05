#bubble sort repeatedly swaps adjacent elements towards the beginning until all elemens are sorted.
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

print bubble_sort [4, 7, 2, 1]