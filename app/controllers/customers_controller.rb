require_relative '../views/customer_view'
require_relative '../models/customer'

class CustomersController
  def initialize(customer_repo)
    @customer_repo = customer_repo
    @customer_view = CustomerView.new
  end

  def list
    # get all the meals from the repo
    customers = @customer_repo.all
    # call view method to display the array
    @customer_view.display(customers)
  end

  def add
    # ask user for the meal name and for the meal price (view)
    name = @customer_view.ask_for_stuff('Name')
    address = @customer_view.ask_for_stuff('Address')
    # create a meal instance (model)
    customer = Customer.new(name: name, address: address)
    # create a meal from the meal repo
    @customer_repo.create(customer)
  end
end
