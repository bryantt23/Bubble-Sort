def bubble_sort(array)
  num_trials = 1
  while num_trials < array.length
    first_element = 0
    second_element = 1
    swap_sucess = false
    while first_element < array.length - num_trials
      if array[first_element] > array[second_element]
        array.insert(first_element, array.delete_at(second_element))
        swap_success = true
      end
      first_element += 1
      second_element += 1
    end
    unless swap_success
      break
    end
    num_trials += 1
  end
  print  array
end

def bubble_sort_by(array) 
  num_trials = 1
  while num_trials < array.length
    first_element = 0
    second_element = 1
    swap_sucess = false
    while first_element < array.length - num_trials
      if yield(array[first_element], array[second_element]) < 0
        array.insert(first_element, array.delete_at(second_element))
        swap_success = true
      end
      first_element += 1
      second_element += 1
    end
    unless swap_success
      break
    end
    num_trials += 1
  end
  print array
  puts 
end

bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
  right.length - left.length
end 

bubble_sort_by(["hi", "hello", "hey"]) do |right,left|
  right.length - left.length
end

puts bubble_sort([4,3,78,2,0,2]) 
puts bubble_sort([422,66,4,44,5,7,392,22,8,77,33,118,99,6,1,62,29,14,139,2]) 