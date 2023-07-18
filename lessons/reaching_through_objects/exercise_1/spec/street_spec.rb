require "./lib/building"
require "./lib/street"
require "./lib/apartment"

RSpec.describe Street do
  describe "#initialize" do
    it "exists" do
      adlington = Street.new("Adlington Road")

      expect(adlington).to be_a(Street)
    end
  end

  describe "#name" do
    it "returns name of street" do
      adlington = Street.new("Adlington Road")

      expect(adlington.name).to eq("Adlington Road")
    end
  end

  describe "#add_building" do
    it "adds building to street and returns data" do
      adlington = Street.new("Adlington Road")

      bldg = Building.new("623", "Savills Apartment Building")

      expect(adlington.add_building(bldg)).to eq([bldg])
    end
  end

  describe "#buildings" do
    it "returns building name alphabetically " do
      adlington = Street.new("Adlington Road")

      bldg = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      adlington.add_building(bldg)
      adlington.add_building(zebra)

      expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
    end
  end

  describe "#number_of_available_apartments" do
    it "returns apartments not currently rented" do
      adlington = Street.new("Adlington Road")

      apartment1 = Apartment.new
      apartment1.add_room("bedroom")
      apartment1.add_room("laundry")

      apartment2 = Apartment.new
      apartment2.add_room("bathroom")
      apartment2.add_room("bedroom")
      apartment2.add_room("kitchen")
      apartment2.add_room("laundry")

      apartment3 = Apartment.new
      apartment3.add_room("bathroom")
      apartment3.add_room("bedroom")
      apartment3.add_room("laundry")

      bldg = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      zebra.add_apartment(apartment1)

      bldg.add_apartment(apartment2)
      bldg.add_apartment(apartment3)

      adlington.add_building(bldg)
      adlington.add_building(zebra)

      expect(adlington.number_of_available_apartments).to eq(3)
      
      bldg.apartments.first.rent
      
      expect(adlington.number_of_available_apartments).to eq(2)
    end
  end

  describe "#list_available_apartments" do
    it "lists the names of the apartments and its room if not rented" do
      adlington = Street.new("Adlington Road")

      apartment1 = Apartment.new
      apartment1.add_room("bedroom")
      apartment1.add_room("laundry")

      apartment2 = Apartment.new
      apartment2.add_room("bathroom")
      apartment2.add_room("bedroom")
      apartment2.add_room("kitchen")
      apartment2.add_room("laundry")

      apartment3 = Apartment.new
      apartment3.add_room("bathroom")
      apartment3.add_room("bedroom")
      apartment3.add_room("laundry")

      bldg = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      zebra.add_apartment(apartment1)

      bldg.add_apartment(apartment2)
      bldg.add_apartment(apartment3)

      adlington.add_building(bldg)
      adlington.add_building(zebra)

      correct_hash = {
        "Zebra Apartments" => ["bedroom", "laundry"]
        "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"]
        "Savills Apartment Building" => ["bathroom", "bedroom", "laundry"]
      }

      expect(adlington.list_available_apartments).to eq(correct_hash)
    end
  end
end