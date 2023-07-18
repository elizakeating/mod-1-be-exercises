require "./lib/room"
require "./lib/apartment"

RSpec.describe do
  describe "#initialize" do
    it "exists" do
      apartment = Apartment.new

      expect(apartment).to be_a(Apartment)
    end
  end

  describe "#is_rented" do
    it "returns whether or not apartment is rented" do
      apartment = Apartment.new

      expect(apartment.is_rented?).to be false
      apartment.rent
      expect(apartment.is_rented?).to be true
    end
  end

  describe "#add_room" do
    it "adds rooms to the apartment" do
      apartment = Apartment.new

      bathroom = Room.new("bathroom")

      apartment.add_room(bathroom)
      apartment.add_room(Room.new("laundry"))
      apartment.add_room(Room.new("kitchen"))
      apartment.add_room(Room.new("bedroom"))

      expect(apartment.rooms).to be_a(Array )
    end
  end

  describe "#list_rooms_by_name_alphabetically" do
    it "returns array of room names" do
      apartment = Apartment.new

      bathroom = Room.new("bathroom")

      apartment.add_room(bathroom)
      apartment.add_room(Room.new("laundry"))
      apartment.add_room(Room.new("kitchen"))
      apartment.add_room(Room.new("bedroom"))

      expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
  end
end