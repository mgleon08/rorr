describe '#longest_word' do
  it do
    str = "fun&!! time"
    expect(longest_word(str)).to eq "time"
  end
  it do
    str = "Hello# @@World"
    expect(longest_word(str)).to eq "Hello"
  end
  it do
    str = "ruby or rails"
    expect(longest_word(str)).to eq "rails"
  end
end
