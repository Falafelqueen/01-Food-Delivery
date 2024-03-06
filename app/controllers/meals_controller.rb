require_relative '../views/meal_view'
require_relative '../models/meal'

class MealsController
  def initialize(meal_repo)
    @meal_repo = meal_repo
    @meal_view = MealView.new
  end

  def list
    # get all the meals from the repo
    meals = @meal_repo.all
    # call view method to display the array
    @meal_view.display(meals)
  end

  def add
    # ask user for the meal name and for the meal price (view)
    name = @meal_view.ask_for_stuff('Name')
    price = @meal_view.ask_for_stuff('Price').to_i
    # create a meal instance (model)
    meal = Meal.new(name: name, price: price)
    # create a meal from the meal repo
    @meal_repo.create(meal)
  end

  def edit
    # view which meal do you want to edit
    list
    meal_id = @meal_view.ask_for_stuff("Which meal do you want to edit").to_i
    # find the meal
    meal_to_edit = @meal_repo.find(meal_id)
    # ask for the new name
    new_name = @meal_view.ask_for_stuff("What is the new name")
    # ask for the new price
    new_price = @meal_view.ask_for_stuff("What is the new price")
    
    meal_to_edit.name = new_name
    meal_to_edit.price = new_price
    # save (repo)
    @meal_repo.update
  end
end
