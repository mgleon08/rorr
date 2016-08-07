require 'spec_helper'

describe Rorr::Score do
  subject(:score) { described_class }

  it 'default value' do
    expect(score.report).to eq([])
    expect(score.total).to eq({ correct: 0, wrong: 0, skip: 0, retry: 0 })
  end

  it '#init' do
    score.init(1)
    expect(score.single).to eq({ question: "1.", correct: '', skip: '', retry: 0, color:'' })
  end

  it '#add_correct' do
    score.add_correct
    expect(score.total[:correct]).to eq(1)
    expect(score.single[:correct]).to eq('✓')
  end

  it '#add_wrong' do
    score.add_wrong
    expect(score.total[:correct]).to eq(1)
    expect(score.single[:correct]).to eq('✗')
  end

  it '#add_skip' do
    score.add_skip
    expect(score.total[:skip]).to eq(1)
    expect(score.single[:skip]).to eq('✓')
  end

  it '#add_retry' do
    score.add_retry
    expect(score.total[:retry]).to eq(1)
    expect(score.single[:retry]).to eq(1)
  end

  it '#add_report' do
    score.add_report
    expect(score.report.length).to eq(1)
  end

  it '#total_count' do
    expect(score.total_count).to eq(3)
  end

  it '#correct_rate' do
    expect(score.correct_rate).to eq(((1.0/3.0)*100).round(2))
  end

  it '#wrong_rate' do
    expect(score.correct_rate).to eq(((1.0/3.0)*100).round(2))
  end

  it '#skip_rate' do
    expect(score.correct_rate).to eq(((1.0/3.0)*100).round(2))
  end
end
