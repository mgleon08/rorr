require 'spec_helper'

describe Rorr::Score do
  subject(:score) { described_class }

  it '#init' do
    expect(score.correct).to eq(0)
    expect(score.wrong).to eq(0)
    expect(score.skip).to eq(0)
  end

  it '#add_correct' do
    score.add_correct
    expect(score.correct).to eq(1)
  end

  it '#add_wrong' do
    score.add_wrong
    expect(score.wrong).to eq(1)
  end

  it '#add_skip' do
    score.add_skip
    expect(score.skip).to eq(1)
  end

  it '#total' do
    expect(score.total).to eq(3)
  end

  it '#correct_rate' do
    expect(score.correct_rate).to eq((1.0/3.0)*100)
  end
end
