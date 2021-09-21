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
end
