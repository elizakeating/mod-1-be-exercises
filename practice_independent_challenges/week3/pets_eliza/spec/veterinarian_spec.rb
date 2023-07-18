require "./lib/pet"
require "./lib/customer"
require "./lib/groomer"
require "./lib/day_care"
require "./lib/veterinarian"

RSpec.describe Veterinarian do
  describe "#initialize" do
    it "exists" do
      vet = Veterinarian.new("John")
      
      expect(vet).to be_a Veterinarian
    end
  end
  
  describe "#name" do
    it "returns name of vet" do
      vet = Veterinarian.new("John")
      
      expect(vet.name).to eq("John")
    end
  end
  
  describe "#customers" do
    it "returns list of customers" do
      vet = Veterinarian.new("John")
      
      expect(vet.customers).to eq([])
    end
  end
  
  describe "#add_customer" do
    it "adds customers to vet" do
      vet = Veterinarian.new("John")

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

      vet.add_customer(mary)
      vet.add_customer(todd)
      vet.add_customer(alex)

      expect(vet.customers).to eq([mary, todd, alex])
    end
  end

  describe "#pets_under_care" do
    it "returns pets under care, sorted by age (oldest to youngest)" do
      vet = Veterinarian.new("John")

      samson = Pet.new({name: "Samson", type: :dog, age: 4})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 2})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(fido)
      todd.adopt(samson)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.adopt(marshall)

      vet.add_customer(mary)
      vet.add_customer(todd)
      vet.add_customer(alex)

      expect(vet.pets_under_care).to eq([chester, samson, marshall, peep, fido])
    end
  end

  describe "#pet_count" do
    it "counts the number of pets of a given customer" do
      vet = Veterinarian.new("John")

      samson = Pet.new({name: "Samson", type: :dog, age: 4})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 2})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(fido)
      todd.adopt(samson)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.adopt(marshall)

      vet.add_customer(mary)
      vet.add_customer(todd)
      vet.add_customer(alex)

      expect(vet.pet_count(mary)).to eq(1)
      expect(vet.pet_count(alex)).to eq(2)
    end
  end
end