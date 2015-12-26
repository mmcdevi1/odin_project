def substrings(str, dictionary)
  histogram = Hash.new(0)
  string_array = str.downcase.gsub(/[^a-z]/, ' ').split

  dictionary.each do |word_in_dictionary|
    string_array.each do |word_in_string_array|
      if word_in_string_array.include?(word_in_dictionary)
        histogram[word_in_dictionary] += 1
      end
    end
  end

  histogram
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
