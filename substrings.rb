def substrings(str, arr)
  hash = Hash.new(0)
  string = str.downcase.gsub(/[^a-z]/, ' ').split

  arr.each do |i|
    string.each do |n|
      if n.include?(i)
        hash[i] += 1
      end
    end
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
