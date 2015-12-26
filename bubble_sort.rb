def bubble_sort(arr)

  i = arr.length
  index = 0

  while arr[0, i].last != arr[0, i].max

    (i - 1).times do 
      if arr[index] > arr[index + 1] 
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
      index += 1
    end

    index = 0
    i -= 1

  end

  arr 

end

# p bubble_sort([4,3,78,2,0,2,56,1])

def bubble_sort_by(arr)

  i = arr.length
  index = 0

  while arr[0, i].last != arr[0, i].max

    (i - 1).times do 
      if yield( arr[index], arr[index + 1] ) > 0 
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
      index += 1
    end

    index = 0
    i -= 1

  end

  p arr 

end

bubble_sort_by(['this', 'hello', 'and']) do |left, right|
  left.length - right.length
end
