require "./lib/pet"
require "./lib/customer"

RSpec.describe Customer do
  describe "#initialize" do
    it "exists" do
      joel = Customer.new("Joel", 2)
      
      expect(joel).to be_a Customer
    end
  end
  
  describe "#name" do
    it "returns customer name" do
      joel = Customer.new("Joel", 2)
      
      expect(joel.name).to eq("Joel")
    end
  end
  
  describe "#id" do
    it "returns customer id" do
      joel = Customer.new("Joel", 2)

      expect(joel.id).to eq(2)
    end
  end

  describe "#pets" do
    it "returns customer's pets'" do
      joel = Customer.new("Joel", 2)
      
      expect(joel.pets).to eq([])
    end
  end
  
  describe "#adopt" do
    it "lets the cusotmer adopt pets" do
      joel = Customer.new("Joel", 2)

      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      lucy = Pet.new({name: "Lucy", type: :cat, age: 12}) 
      
      expect(samson).to be_a Pet
      expect(lucy).to be_a Pet

      joel.adopt(samson)
      joel.adopt(lucy)

      expect(joel.pets).to eq([samson, lucy])
    end
  end

  describe "#outstanding_balance" do
    it "returns customer's outstanding balance" do
      joel = Customer.new("Joel", 2)

      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      lucy = Pet.new({name: "Lucy", type: :cat, age: 12}) 
      
      expect(samson).to be_a Pet
      expect(lucy).to be_a Pet

      joel.adopt(samson)
      joel.adopt(lucy)

      expect(joel.outstanding_balance).to eq(0)
    end
  end
  
  describe "#charge" do
    it "charges customer for pets" do
      joel = Customer.new("Joel", 2)
      
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      lucy = Pet.new({name: "Lucy", type: :cat, age: 12}) 
      
      expect(samson).to be_a Pet
      expect(lucy).to be_a Pet
      
      joel.adopt(samson)
      joel.adopt(lucy)
      
      expect(joel.outstanding_balance).to eq(0)
      
      joel.charge(15)
      joel.charge(7)
      
      expect(joel.outstanding_balance).to eq(22)
    end
  end
end