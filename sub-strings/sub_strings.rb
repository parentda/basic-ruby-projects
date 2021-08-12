def substrings(string, dictionary)
  lowercase_string = string.downcase

  output =
    dictionary.reduce({}) do |accum, word|
      instances = lowercase_string.scan(word.downcase).size
      accum[word] = instances if instances.positive?
      accum
    end

  puts output
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
substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
