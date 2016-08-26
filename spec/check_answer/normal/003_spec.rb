describe '#alphabetize' do
  it do
    ary = ["Ruby", "Rails", "Python", "PHP", "Swift"]
    expect(alphabetize(ary, false)).to eq ["PHP", "Python", "Rails", "Ruby", "Swift"]
  end
  it do
    ary = ["Ruby", "Rails", "Python", "PHP", "Swift"]
    expect(alphabetize(ary, true)).to eq ["Swift", "Ruby", "Rails", "Python", "PHP"]
  end
  it do
    ary = ["Foo", "Bar", "Ruby", "Or", "Rails"]
    expect(alphabetize(ary, true)).to eq ["Ruby", "Rails", "Or", "Foo", "Bar"]
  end
end
