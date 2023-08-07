require "./lib/artist"

RSpec.describe Artist do
  before(:each) do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }

    artist = Artist.new(attributes)
  end

  describe "#initialize" do
    it "exists" do
      expect(artist).to be_a(Artist)
    end
  end

  describe "#id" do
    it "returns id of artist" do
      expect(artist.id).to eq("2")
    end
  end

  describe "#name" do
    it "returns name of artist" do
      expect(artist.name).to eq("Ansel Adams")
    end
  end

  describe "#born" do
    it "returns year the artist was born" do
      expect(artist.born).to eq("1902")
    end
  end

  describe "#died" do
    it "returns year artist died" do
       expect(artist.died).to eq("1984")
  end

  describe "#country" do
    it "returns country of artist" do
      expect(artist.country).to eq("United States")
    end
  end

  describe "#age_at_death" do
    it "returns age at which the artist died" do
      expect(artist.age_at_death).to eq(82)
    end
  end
end