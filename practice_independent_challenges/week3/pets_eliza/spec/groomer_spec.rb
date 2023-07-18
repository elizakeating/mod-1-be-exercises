require "./lib/pet"
require "./lib/customer"
require "./lib/groomer"

RSpec.describe Groomer do
  describe "#initialize" do
    it "exists" do
      groomer = Groomer.new("Abigal")
      
      expect(groomer).to be_a Groomer
    end
  end
  
  describe "#name" do
    it "returns groomer name" do
      groomer = Groomer.new("Abigal")
      
      expect(groomer.name).to eq("Abigal")
    end
  end
  
  describe "#customers" do
    it "returns groomer's customers" do
      groomer = Groomer.new("Abigal")
      
      expect(groomer.customers).to eq([])
    end
  end
  
  describe "#add_customer" do
    it "gives the groomer a new customer" do
      groomer = Groomer.new("Abigal")

      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)
      mary.charge(14)

      todd = Customer.new("Todd", 2)
      todd.adopt(marshall)
      todd.charge(10)
      todd.adopt(samson)
      todd.charge(11)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      todd.charge(20)
      alex.adopt(marshall)
      todd.charge(10)

      expect(groomer.customers).to eq([])
      
      groomer.add_customer(mary)
      groomer.add_customer(todd)
      groomer.add_customer(alex)
      
      expect(groomer.customers).to eq([mary, todd, alex])
      expect(groomer.customers.first.pets).to eq([chester])
    end
  end

  describe "#find_outstanding_balance" do
    it "returns customers that have oustanding balance" do
      groomer = Groomer.new("Abigal")

      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(marshall)
      todd.charge(10)
      todd.adopt(samson)
      todd.charge(11)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      alex.charge(20)
      alex.adopt(marshall)
      alex.charge(10)

      expect(groomer.customers).to eq([])
      
      groomer.add_customer(mary)
      groomer.add_customer(todd)
      groomer.add_customer(alex)

      expect(groomer.find_outstanding_balances).to eq([todd, alex])
    end
  end

  describe "#number_of_pet_type" do
    it "returns the number of a specific pet type" do
      groomer = Groomer.new("Abigal")

      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      fido = Pet.new({name: "Fido", type: :dog, age: 1})
      chester = Pet.new({name: "Chester", type: :cat, age: 9})
      peep = Pet.new({name: "Peep", type: :bird, age: 3})
      marshall = Pet.new({name: "Marshall", type: :dog, age: 3})

      mary = Customer.new("Mary", 1)
      mary.adopt(chester)

      todd = Customer.new("Todd", 2)
      todd.adopt(marshall)
      todd.charge(10)
      todd.adopt(samson)
      todd.charge(11)

      alex = Customer.new("Alex", 3)
      alex.adopt(peep)
      todd.charge(20)
      alex.adopt(marshall)
      todd.charge(10)

      expect(groomer.customers).to eq([])
      
      groomer.add_customer(mary)
      groomer.add_customer(todd)
      groomer.add_customer(alex)

      expect(groomer.number_of_pet_type(:dog)).to eq(3)
      expect(groomer.number_of_pet_type(:cat)).to eq(1)
      expect(groomer.number_of_pet_type(:bird)).to eq(1)
    end
  end
end