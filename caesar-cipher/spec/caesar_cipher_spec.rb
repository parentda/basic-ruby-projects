require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'rejects non-string inputs' do
    expect(caesar_cipher(12_345, 5)).to eql('Invalid input format')
  end

  it 'returns the same string when the shift factor is 0' do
    expect(caesar_cipher('What a string!', 0)).to eql('What a string!')
  end

  it 'returns the same string when no shift factor provided' do
    expect(caesar_cipher('What a string!')).to eql('What a string!')
  end

  it 'works with an empty string' do
    expect(caesar_cipher('', 10)).to eql('')
  end

  it 'ignores non-alphabetical characters in a string' do
    expect(caesar_cipher('1234... What a string! 4321!@#$%', 5)).to eql(
      '1234... Bmfy f xywnsl! 4321!@#$%'
    )
  end

  it 'accepts a string and a positive shift factor' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'accepts a string and a negative shift factor' do
    expect(caesar_cipher('What a string!', -15)).to eql('Hsle l dectyr!')
  end

  it 'exhibits proper wrapping when the shift factor is greater than 26 in magnitude' do
    expect(caesar_cipher('What a string!', 31)).to eql('Bmfy f xywnsl!')
  end
end
