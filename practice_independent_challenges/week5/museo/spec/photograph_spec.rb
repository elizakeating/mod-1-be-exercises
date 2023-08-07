require "./lib/photograph"

RSpec.describe Photograph do

  before(:each) do
    @attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }

    @photograph = Photograph.new(@attributes)
  end

  describe "#initialize" do
    it "exists" do
      expect(@photograph).to be_a(Photograph)
    end
  end

  describe "#id" do
    it "returns id of the photograph" do
      expect(@photograph.id).to eq("1")
    end
  end

  describe "#name" do
    it "returns name of the photograph" do
      expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
    end
  end

  describe "#artist_id" do
    it "returns artist id of the photograph" do
      expect(@photograph.artist_id).to eq("4")
    end
  end

  describe "#year" do
    it "returns year of photograph" do
      expect(@photograph.year).to eq("1954")
    end
  end
end