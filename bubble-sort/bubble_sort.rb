def bubble_sort(array)
  n = array.length - 1
  sorted = false
  until sorted
    sorted = true
    n.times do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      sorted = false
    end
    n -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([4, 3])
p bubble_sort([4])
p bubble_sort([-4, 3, 78, -2, 0, 2])
