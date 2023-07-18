require "./lib/pet"
require "./lib/customer"
require "./lib/groomer"
require "./lib/day_care"

RSpec.describe DayCare do
  describe "#initialize" do
    it "exists" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      expect(daycare).to be_a DayCare
    end
  end
  
  describe "#name" do
    it "returns day care name" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      expect(daycare.name).to eq("Sunny Fields Day Care")
    end
  end
  
  describe "#customers" do
    it "returns list of customers of day care" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      expect(daycare.customers).to eq([])
    end
  end
  
  describe "#add customers" do
    it "adds customers to the day care" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(fido)
      todd.adopt(samson)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.adopt(marshall)

      daycare.add_customer(mary)
      daycare.add_customer(todd)
      daycare.add_customer(alex)

      expect(daycare.customers).to eq([mary, todd, alex])
    end
  end

  describe "#find_customer" do
    it "finds customer by the customer id" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(fido)
      todd.adopt(samson)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.adopt(marshall)

      daycare.add_customer(mary)
      daycare.add_customer(todd)
      daycare.add_customer(alex)

      expect(daycare.find_customer(3)).to eq(alex)
    end
  end

  describe "#unfed_pets" do
    it "lists pets that are unfed" do
      daycare = DayCare.new("Sunny Fields Day Care")
      
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(fido)
      todd.adopt(samson)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.adopt(marshall)

      daycare.add_customer(mary)
      daycare.add_customer(todd)
      daycare.add_customer(alex)

      expect(daycare.unfed_pets).to eq([chester, fido, samson, peep, marshall])

      chester.feed
      marshall.feed

      expect(daycare.unfed_pets).to eq([fido, samson, peep])
    end
  end
end