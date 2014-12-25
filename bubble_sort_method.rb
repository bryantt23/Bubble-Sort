def bubble_sort(array)
  #start with trial 1
  num_trials = 1

  #this means the number of iterations is equal to 1 less than the number of array elements
  #if there are 5 array elements, there will be 4 passes
  while num_trials < array.length

    #this starts the comparisons with index 0 to index 1
    first_element = 0
    second_element = 1
    #set boolean to false
    swap_sucess = false
    #this
    while first_element < array.length - num_trials
      #if the first element is smaller, need to swap
      if array[first_element] > array[second_element]
      #insert the first element and delete the second element?
#      array.insert(index, obj...)
#Inserts the given values before the element with the given index (which may be negative).
#array.delete_at(index)
#Deletes the element at the specified index, returning that element, or nil if the index is out of range.
      array.insert(first_element, array.delete_at(second_element))
=begin
      #ok i think i understand
      if it is 100, 1
        it will insert 1 (second element) before 100 (first element) and delete the original 1 (second element)
        1, 100 results
         
=end
      #set boolean to true
      swap_success = true
      end
      #now increment both and compare next 2 elements
      first_element += 1
      second_element += 1
    end
    unless swap_success
    #break out of loop if elements were swapped
    break
    end
    #increment number of trials
    #this makes the sorting go from all the elements to
    #eventually just the first 2 elements
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

=begin
Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
The block should take two arguments which represent the two elements currently being compared. 
Expect that the block's return will be similar to the spaceship operator you learned about before -- 
if the result of the block is negative, the element on the left is "smaller" than the element on the right. 
0 means they are equal. A positive result means the left element is greater. Use this to sort your array.        
=end