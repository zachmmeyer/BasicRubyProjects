dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

user_string = gets.chomp

def sub_strings (user_string = "Howdy partner, sit down! How's it going?", dictionary)

  punctuation_array = [" ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@"]
  dictionary_match = Hash.new(0)

  user_string = "Howdy partner, sit down! How's it going?"

  arrayed_string = user_string.downcase.split(" ")

  arrayed_string.each do |string_iterator|
    punctuation_array.each do |punctuation_iterator|
      while (string_iterator.include?(punctuation_iterator))
        string_iterator.slice!(-1)
      end
    end
  end

  dictionary.each do |dictionary_iterator|
    arrayed_string.each do |string_iterator|
      if string_iterator.start_with?(dictionary_iterator)
        dictionary_match[dictionary_iterator] += 1
      end
    end
  end

  puts dictionary_match

end

sub_strings(user_string,dictionary)
