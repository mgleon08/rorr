describe '#simple_adding' do
  it do
    expect(simple_adding(8)).to eq 36
  end
  it do
    expect(simple_adding(12)).to eq 78
  end
  it do
    expect(simple_adding(128)).to eq 8256
  end
end
