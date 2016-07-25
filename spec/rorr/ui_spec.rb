require 'spec_helper'

describe Rorr::UI do
  subject(:ui) { described_class }

  before(:each) do
    @in     = StringIO.new
    @out    = StringIO.new
    @config = Rorr::Config
    @config.stdin  = @in
    @config.stdout = @out
  end

  it "should add puts to out stream" do
    ui.puts "foo"
    expect(@out.string).to eq("foo\n")
  end

  it "should fetch gets from in stream" do
    @in.puts "bar"
    @in.rewind
    expect(ui.gets).to eq("bar")
  end

  it "should return empty string if no input" do
    @config.stdin = nil
    expect(ui.gets).to eq("")
  end

  it "should delay after puts when specified" do
    @config.delay = 0.8
    allow(ui).to receive(:sleep)
    ui.puts_with_delay("foo")
    expect(ui).to have_received(:sleep)
  end
end
