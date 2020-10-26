def bubble_sort (num_array = [4,3,78,2,0,2])  
  sorted = 0
  while sorted != num_array.length-1
    sorted = 0
    num_array.each_with_index do |num, index|
      if num_array[index] == num_array.last
        next
      end
      if num_array[index] > num_array[index+1]
        temp_array_num = num_array[index]
        num_array.delete_at(index)
        num_array.insert(index+1,temp_array_num)
        next
      else 
        sorted += 1
        next
      end
    end
  end
  p num_array
end

bubble_sort()
