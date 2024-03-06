require_relative 'models/meal'
require_relative 'repositories/meal_repository'
require_relative 'models/customer'
require_relative 'repositories/customer_repository'

pizza = Meal.new(id: 1, name: "Margrarita", price: 3)

meal_file = File.join(__dir__, '../data/meals.csv')
meal_repo = MealRepository.new(meal_file)
customer_file = File.join(__dir__, '../data/customers.csv')
customer_repo = CustomerRepository.new(customer_file)

meal_repo.create(pizza)

p meal_repo.all

p customer_repo
