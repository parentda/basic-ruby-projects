require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'rejects non-string inputs' do
    expect(caesar_cipher(12_345, 5)).to eql('Invalid input format')
  end
end
