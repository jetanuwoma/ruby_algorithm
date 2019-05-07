def insertion_sort(arr)
    arr.each_with_index do |num, index|
      next if index == 0
      inner_index = index - 1
      # move greater numbers to a higher index than the current number
      while ((inner_index >= 0) && (arr[inner_index] > num))
        arr[inner_index + 1] = arr[inner_index]
        inner_index -= 1
      end
      # put the current number in its right index 
      arr[inner_index + 1] = num
    end
end

insertion_sort([100, 5, 2, 4, 6, 1, 3])