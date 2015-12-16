def stock_picker(arr)
  hash = Hash.new(0)
  arr.each do |i|
    arr.length.times do |n|
      if arr[n] - i > 0
        if arr.index(i) < n
          hash[[arr.index(i), n]] = (arr[n] - i)
        end
      end
    end
  end
  hash.key(hash.values.max)
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,3,6,9,15,8,6,1,10])