require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'rejects non-string inputs' do
    expect(caesar_cipher(12_345, 5)).to eql('Invalid input format')
  end

  it 'returns the same string when the shift factor is 0' do
    expect(caesar_cipher('What a string!', 0)).to eql('What a string!')
  end
end
