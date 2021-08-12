def bubble_sort(array)
  n = array.length - 2
  completed_flag = false
  until completed_flag
    completed_flag = true
    (0..n).each do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      completed_flag = false
    end
    n -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([-4, 3, 78, -2, 0, 2])
