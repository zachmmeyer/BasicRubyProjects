def caesar_cipher(original_phrase,shift_factor)
  
  arrayed_phrase = original_phrase.codepoints
  shifted_phrase = []
  
  arrayed_phrase.map do |character|
    shift_factor_temp = shift_factor
    if (32..64).cover?(character)
      shifted_phrase.push(character)
    elsif character >= 97 && character <= 122
      if character+shift_factor_temp < 97
        while character+shift_factor_temp < 97
          shift_factor_temp += 26
        end
        shifted_phrase.push(character + shift_factor_temp)
      elsif character+shift_factor > 122
        while character+shift_factor_temp > 122
          shift_factor_temp -= 26
        end
        shifted_phrase.push(character + shift_factor_temp)
      else
        shifted_phrase.push(character + shift_factor_temp)
      end
    elsif character >= 65 && character <= 90
      if character+shift_factor < 65
        while character+shift_factor_temp < 65
          shift_factor_temp += 26
        end
        shifted_phrase.push(character + shift_factor_temp)
      elsif character+shift_factor > 90
        while character+shift_factor_temp > 90
          shift_factor_temp -= 26
        end
        shifted_phrase.push(character + shift_factor_temp)
      else
        shifted_phrase.push(character + shift_factor_temp)
      end
    end
  end
  
  shifted_phrase.map! do |character|
    character.chr
  end

  puts shifted_phrase.join

end

puts "Enter string"
user_string = gets.chomp
puts "Enter number"
user_number = gets.chomp.to_i

caesar_cipher(user_string, user_number)
