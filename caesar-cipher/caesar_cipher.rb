def caesar_cipher(string, shift_factor = 0)
  string
    .chars
    .map do |char|
      if char.match?(/[A-Za-z]/)
        numeric_rep = char.ord
        shift = shift_factor.remainder(26)
        if numeric_rep >= 65 && numeric_rep <= 90
          if numeric_rep + shift > 90
            (65 + (numeric_rep + shift - 1) - 90).chr
          elsif numeric_rep + shift < 65
            (90 + (numeric_rep + shift + 1) - 65).chr
          else
            (numeric_rep + shift).chr
          end
        elsif numeric_rep >= 97 && numeric_rep <= 122
          if numeric_rep + shift > 122
            (97 + (numeric_rep + shift - 1) - 122).chr
          elsif numeric_rep + shift < 97
            (122 + (numeric_rep + shift + 1) - 97).chr
          else
            (numeric_rep + shift).chr
          end
        end
      else
        char
      end
    end
    .join('')
end

p caesar_cipher('What a string!', 5)
p caesar_cipher("It's a string!", -15)
