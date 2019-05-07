def merge(left_arr, right_arr)
    left_arr_pass = 0
    right_arr_pass = 0
    sorted_arr = []
  
    # we first compare each element on both arrays
    while ((left_arr_pass < left_arr.size) && (right_arr_pass < right_arr.size))
      left_arr_lowest = left_arr[left_arr_pass]
      right_arr_lowest = right_arr[right_arr_pass]
      if left_arr_lowest < right_arr_lowest
        sorted_arr.append(left_arr_lowest)
        left_arr_pass += 1
      else
        sorted_arr.append(right_arr_lowest)
        right_arr_pass += 1
      end
    end
  
    # at this point all the elements of one of the arrays has been completed fitted into the sorted arr
    if left_arr_pass < left_arr.size
      sorted_arr.append(*left_arr[left_arr_pass...left_arr.size])
    elsif right_arr_pass < right_arr.size
      sorted_arr.append(*right_arr[right_arr_pass...right_arr.size])
    end
  
    sorted_arr
  end
  
  def merge_sort(arr)
    # an array with a single element is sorted
    return arr if arr.size <= 1
    # divide array into 2 halves - divide
    mid_point = arr.size / 2
    # create new arrays
    left_arr = merge_sort(arr.slice(0, mid_point))
    right_arr = merge_sort(arr.slice(mid_point, arr.count - mid_point))
    # merge the arrays back into the original array - We conquer
    merge(left_arr, right_arr)
  end

  merge_sort([100, 5, 2, 4, 6, 1, 3])