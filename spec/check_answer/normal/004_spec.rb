describe '#letter_capitalize' do
  it do
    str = "hello world"
    expect(letter_capitalize(str)).to eq "Hello World"
  end
  it do
    str = "i love ruby or rails"
    expect(letter_capitalize(str)).to eq "I Love Ruby Or Rails"
  end
  it do
    str = "this is rorr"
    expect(letter_capitalize(str)).to eq "This Is Rorr"
  end
end
