require_relative "../lib/track"

RSpec.describe "Track" do
  it "returns true if keyword matches title or artist" do
    track = Track.new("Lionel Richie", "Hello")
    keyword = "Hello"
    expect(track.matches?(keyword)).to eq true
  end

  it "returns an error if keyword is empty" do
    track = Track.new("Lionel Richie", "Hello")
    keyword = ""
    expect{track.matches?(keyword)}.to raise_error "No keyword"
  end
end