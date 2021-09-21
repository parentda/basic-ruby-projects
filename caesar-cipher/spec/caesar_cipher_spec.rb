require './lib/caesar_cipher'

describe '#caesar_cipher' do
  let(:key) { 'What a string!' }
  let(:pos_cipher) { 'Bmfy f xywnsl!' }
  let(:neg_cipher) { 'Hsle l dectyr!' }

  it 'rejects non-string inputs' do
    expect(caesar_cipher(12_345, 5)).to eql('Invalid input format')
  end

  it 'returns the same string when the shift factor is 0' do
    expect(caesar_cipher(key, 0)).to eql(key)
  end

  it 'returns the same string when no shift factor provided' do
    expect(caesar_cipher(key)).to eql(key)
  end

  it 'works with an empty string' do
    expect(caesar_cipher('', 10)).to eql('')
  end

  it 'ignores non-alphabetical characters in a string' do
    expect(caesar_cipher("1234... #{key} 4321!@#$%", 5)).to eql(
      '1234... Bmfy f xywnsl! 4321!@#$%'
    )
  end

  it 'accepts a string and a positive shift factor' do
    expect(caesar_cipher(key, 5)).to eql(pos_cipher)
  end

  it 'accepts a string and a negative shift factor' do
    expect(caesar_cipher(key, -15)).to eql(neg_cipher)
  end

  it 'exhibits proper wrapping when the shift factor is greater than 26 in magnitude' do
    expect(caesar_cipher(key, 31)).to eql(pos_cipher)
  end
end
