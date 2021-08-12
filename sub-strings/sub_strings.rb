def substrings(string, dictionary)
  lowercase_string = string.downcase

  dictionary.reduce({}) do |accum, word|
    instances = lowercase_string.scan(word.downcase).size
    accum[word] = instances if instances.positive?
    accum
  end
end

dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
