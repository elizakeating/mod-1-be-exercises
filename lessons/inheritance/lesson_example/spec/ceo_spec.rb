require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20,"ali",1)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20,"ali",1)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
      # require 'pry';binding.pry
    end
  end
  
  describe "Has a name, ID, and total_compensation" do
    it "has a name" do
      ceo = Ceo.new(15,20,"ali",1)
      
      expect(ceo.name).to eq("ali")
    end
    
    it "has an id" do
      ceo = Ceo.new(15,20,"ali",1)
      
      expect(ceo.id).to eq(1)
    end
    
    it "has a total compensation" do
      ceo = Ceo.new(15,20,"ali",1)

      expect(ceo.total_compensation).to eq(35)
    end
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
  end

end