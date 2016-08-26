describe '#first_factorial' do
  it do
    str = "Hello"
    expect(first_factorial(str)).to eq "olleH"
  end
  it do
    str = "I Love RorR"
    expect(first_factorial(str)).to eq "RroR evoL I"
  end
  it do
    str = "Foo Bar"
    expect(first_factorial(str)).to eq "raB ooF"
  end
end
