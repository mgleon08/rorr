describe '#letter_changes' do
  it do
    str = "hello*3"
    expect(letter_changes(str)).to eq "ifmmp*3"
  end
  it do
    str = "have fun!"
    expect(letter_changes(str)).to eq "ibwf gvo!"
  end
  it do
    str = "ruby or rails!"
    expect(letter_changes(str)).to eq "svcz ps sbjmt!"
  end
end
