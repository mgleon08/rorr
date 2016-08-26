describe '#fibonacci' do
  it do
    expect(fibonacci(8)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end
  it do
    expect(fibonacci(15)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
  end
  it do
    expect(fibonacci(20)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
  end
end
