

# rearrange the array to make sure either all the elements to the left of the pivot are lesser or equal to the pivot and all the elements to the right are equal or greater than the pivot or vice-versa.
def partition(arr, start_index, end_index)
  # choose a pivot - going with the right most element courtesy the intro to alogrithm book 
  pivot = arr[end_index]
  pivot_index = start_index
  
  # array is arranged such that the pivot is in the middle
  arr[start_index...end_index].each_with_index do |num, index|
    if num <= pivot
      arr[start_index + index], arr[pivot_index] = arr[pivot_index], arr[start_index + index]
      pivot_index += 1
    end
  end
  arr[pivot_index], arr[end_index] = arr[end_index], arr[pivot_index]
  pivot_index
end

# sort an array using the quick_sort technique
def quick_sort(arr, start_index=0, end_index=nil)
  # default the end_index to the array size - 1 ==)) zero based indexing
  end_index ||= (arr.size - 1)
  # base case to stop our recursion
  return unless start_index < end_index
  pivot_index = partition(arr, start_index, end_index)
  quick_sort(arr, start_index, pivot_index - 1)
  quick_sort(arr, pivot_index + 1, end_index)
  arr
end

quick_sort([100, 5, 2, 4, 6, 1, 3]);