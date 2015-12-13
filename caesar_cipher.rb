def caesar_cipher(str, shift)
  #Split string into an array of its ordinal code
  ordinal_array = str.split('').map! { |i| i.ord } 

  shift = shift % 26

  # add shift value to ordinal_array
  ordinal_array.map! do |i|
    if i == 32
      # check if element is empty string or add shift value
      # ordinal code 32 => " "
      i = 32
    elsif (i + shift > 122) || ((i + shift > 90) || (i + shift < 97))
      # if the shift factor goes beyond 'Z' or 'z', 
      # need to subtract 26 to back to 'a'
      i + shift - 26
    else
      i + shift
    end
  end

  new_string = ordinal_array.map { |i| i.chr }.join
  puts new_string
end

caesar_cipher('HeLLo WorLd ZZZZzzZZ', 25)
caesar_cipher('hello world', 25)
caesar_cipher('zzzzz', 53)

