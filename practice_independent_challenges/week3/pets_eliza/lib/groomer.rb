class Groomer
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_outstanding_balances
    outstanding_customers = @customers.find_all do |customer|
      customer if customer.outstanding_balance != 0
    end
  end

  def number_of_pet_type(type)
    number_of_pets = 0
    @customers.each do |customer|
      customer.pets.each do |pet|
        number_of_pets += 1 if pet.type == type
      end
    end
    number_of_pets
  end
end