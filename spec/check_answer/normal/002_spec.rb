describe '#cal_chars' do
  it do
    str = "ababccabcacbc"
    expect(cal_chars(str)).to eq ({ :a=>4, :b=>4, :c=>5 })
  end
  it do
    str = "oooxoxxoxoxoxoxoxoxo"
    expect(cal_chars(str)).to eq ({ :o=>11, :x=>9 })
  end
  it do
    str = "rorrrorrorr"
    expect(cal_chars(str)).to eq ({ :r=>8, :o=>3 })
  end
end
