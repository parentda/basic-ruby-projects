def caesar_cipher(string, shift_factor = 0)
  string
    .chars
    .map do |char|
      if char.match?(/[A-Za-z]/)
        char_numeric = char.ord
        base = char_numeric < 97 ? 65 : 97
        ((((char_numeric - base) + shift_factor) % 26) + base).chr
      else
        char
      end
    end
    .join('')
end

p caesar_cipher('What a string!', 5)
p caesar_cipher("It's a string!", -15)
