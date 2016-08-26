describe '#first_factorial' do
  it do
    expect(first_factorial(4)).to eq 24
  end
  it do
    expect(first_factorial(8)).to eq 40320
  end
  it do
    expect(first_factorial(18)).to eq 6402373705728000
  end
end
