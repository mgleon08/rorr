require 'spec_helper'

describe Rorr::Config do
  subject(:config) { described_class }

  it 'defalut value' do
    expect(config.stdin).to  eq(STDIN)
    expect(config.stdout).to eq(STDOUT)
    expect(config.delay).to  eq(0.6)
    expect(config.level).to  eq('normal')
    expect(config.number).to eq(9)
    expect(config.path_prefix).to eq('.')
    expect(config.solution).to eq(false)
  end
end
