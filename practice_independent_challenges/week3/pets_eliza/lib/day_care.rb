class DayCare
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_customer(customer_id)
    @customers.find do |customer|
      customer.id == customer_id
    end
  end

  def unfed_pets
    unfed = []

    @customers.each do |customer|
      customer.pets.each do |pet|
        unfed << pet if pet.fed? == false
      end
    end
    unfed
  end
end