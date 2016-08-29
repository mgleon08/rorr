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
    allow(ui).to receive(:gets).and_return(@config.stdin.gets.chop!)
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

  it "#sleep_with_setting" do
    @config.delay = 1
    allow(ui).to receive(:sleep_with_setting).and_return(true)
    expect(ui.sleep_with_setting).to eq(true)
  end

  it "#repo_format" do
    expect(ui.repo_format('hello')).to eq("\e[0;37;49mhello\e[0m")
    expect(ui.repo_format('hello', 'green')).to eq("\e[0;32;49mhello\e[0m")
  end

  it "#repo_rjust" do
    expect(ui.repo_rjust(1).class).to eq(String)
    expect(ui.repo_rjust(2)).to eq(" 2")
    expect(ui.repo_rjust(3, 5)).to eq("    3")
  end

  it "#coderay" do
    expect(ui.coderay('#hello')).to eq("\e[1;30m#hello\e[0m")
  end
end
