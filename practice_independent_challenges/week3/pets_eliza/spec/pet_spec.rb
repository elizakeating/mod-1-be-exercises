require "./lib/pet"

RSpec.describe Pet do
  describe "#initialize" do
    it "exists" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})

      expect(samson).to be_a Pet
    end
  end

  describe "#name" do
    it "returns pet name" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      
      expect(samson.name).to eq("Samson")
    end
  end
  
  describe "#type" do
    it "returns pet type" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      
      expect(samson.type).to eq(:dog)
    end
  end
  
  describe "#age" do
    it "returns pet age" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      
      expect(samson.age).to eq(3)
    end
  end
  
  describe "#fed?" do
    it "returns whether or not pet is fed" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      
      expect(samson.fed?).to eq(false)
    end
  end
  
  describe "#feed" do
    it "feeds pet" do
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      
      expect(samson.fed?).to eq(false)
      
      samson.feed
      
      expect(samson.fed?).to eq(true)
    end
  end
end