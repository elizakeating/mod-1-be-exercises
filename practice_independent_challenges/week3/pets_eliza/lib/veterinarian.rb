class Veterinarian
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def pets_under_care
    pets = []

    @customers.each do |customer|
      customer.pets.each do |pet|
        pets << pet
      end
    end
    pets.sort_by do |pet|
      pet.age
    end.reverse
  end

  def pet_count(customer)
    customer.pets.count
  end
end