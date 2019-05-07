
class Heap
  attr_reader :array, :initial_heap, :sorted_array
  def initialize(array)
    @array = array
    @heap_size = array.size
    @initial_heap = heapify(Array.new(array), array.size)
    @sorted_array = sort
  end

  private

  def left_child(index)
    2 * index + 1
  end

  def right_child(index)
    2 * index + 2
  end

  # check if the left child of is greater than parent
  def left_child_greater?(array, index)
    array[left_child(index)] && (left_child(index) > array[index])
  end

  # we check if the right node leaf exists and if it is greater than its parent
  def right_child_greater?(array, index)
    @array[right_child(index)] && (@array[right_child(index)] > @array[index])
  end

  def leaf_node?(arr_size, index)
    index >= arr_size/2
  end

  def max_heap_satisfied?(arr, index)
    current_number = arr[index]
    l_child = arr[left_child(index)] || -Float::INFINITY
    r_child = arr[right_child(index)] || -Float::INFINITY
    current_number >= l_child && current_number >= r_child
  end

  def max_child_index(arr, index)
    right_child = arr[right_child(index)] || -Float::INFINITY
    if arr[left_child(index)] > right_child
      left_child(index)
    else
      right_child(index)
    end
  end

  def test_max_heap_cond(arr, index)
    return if leaf_node?(arr.size, index)  || max_heap_satisfied?(arr, index)
    largest =  max_child_index(arr, index)
    arr[index], arr[largest] = arr[largest], arr[index]
    test_max_heap_cond(arr, largest)
  end
  
  def heapify(arr, arr_size)
    (0...arr_size/2).to_a.reverse.each do |index|
      test_max_heap_cond(arr, index)
    end
    arr
  end

  def sort
    heap = Array.new(@initial_heap)
    result = []
    while heap.size > 0
      result.unshift(heap.shift)
      heapify(heap, heap.size)
    end
    result
  end
end

heap = Heap.new([12, 11, 13, 5, 6, 7])
pp heap.sorted_array
