require "./lib/photograph"
require "./lib/artist"
require "./lib/curator"

RSpec.describe Curator do
  before(:each) do
    @curator = Curator.new

    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })

    @photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    })

    @photo_3 = Photograph.new({
      id: "3",
      name: "Identical Twins, Roselle, New Jersey",
      artist_id: "3",
      year: "1967"
    })

    @photo_4 = Photograph.new({
      id: "4",
      name: "Child with Toy Hand Grenade in Central Park",
      artist_id: "3",
      year: "1962"
    })

    @artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })

    @artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })

    @artist_3 = Artist.new({
      id: "3",
      name: "Diane Arbus",
      born: "1923",
      died: "1971",
      country: "United States"
    })
  end

  describe "#initialize" do
    it "exists" do
      expect(@curator).to be_a(Curator)
    end
  end

  describe "#photographs" do
    it "returns the photographs of the curator" do
      expect(@curator.photographs).to eq([])
    end
  end

  describe "#artists" do
    it "returns the artists of the curator" do
      expect(@curator.artists).to eq([])
    end
  end

  describe "#add_photograph" do
    it "adds a photograph to the curator" do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      
      expect(@curator.photographs).to eq([@photo_1, @photo_2])
    end
  end
  
  describe "#add_artist" do
    it "adds an artist to the curator" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      
      expect(@curator.artists).to eq([@artist_1, @artist_2])
    end
  end

  before(:each) do
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    @curator.add_photograph(@photo_3)
    @curator.add_photograph(@photo_4)
    
    @curator.add_artist(@artist_1)
    @curator.add_artist(@artist_2)
    @curator.add_artist(@artist_3)
  end
  
  describe "#find_artist_by_id" do
    it "returns an artist based off of artist id" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      
      expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
    end
  end
  
  describe "#artist_photograph_list" do
    it "returns a list of all artists and their photographs" do
      expect(@curator.artist_photograph_list).to eq({
        @artist_1 => [@photo_1],
        @artist_2 => [@photo_2],
        @artist_3 => [@photo_3, @photo_4]
      })
    end
  end
  
  describe "#artists_more_than_one_photo" do
    it "returns a list of names of artists who have more than one photograph" do
      expect(@curator.artists_more_than_one_photo).to eq(["Diane Arbus"])
    end
  end

  describe "#country_photographs" do
    it "returns a list of photographs that were taken by a photographer from that country" do
      expect(@curator.country_photographs("United States")).to eq([@photo_2, @photo_3, @photo_4])
    end
  end
end