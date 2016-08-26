describe '#sort_keys' do
  it do
    hsh = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
    expect(sort_keys(hsh)).to eq ["abc", "4567", "another_key"]
  end
  it do
    hsh = { 12345 => 'hello', 'rorr' => 123, foo: 'bar' }
    expect(sort_keys(hsh)).to eq ["foo", "rorr", "12345"]
  end
  it do
    hsh = { a: 1, bbb: 2, cc: 3 }
    expect(sort_keys(hsh)).to eq ["a", "cc", "bbb"]
  end
end
