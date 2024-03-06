# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    # show the action menu
    # get the user answer
    while @running
      choice = ask_user_choice
      # call some controller method depending on the user choice
      action(choice)
    end
    # stop running if the user chooses to quit
  end


  private

  def ask_user_choice
    puts "--------------"
    puts "-----Menu------"
    puts "press 1 -> to list all meals"
    puts "press 2 -> to add a meal"
    puts "press 3 -> to list all customers"
    puts "press 4 -> to add a customer"
    puts "press 5 -> to edit a meal"
    puts "press 9 -> to quit"
    puts ">"
    gets.chomp.to_i
  end

  def action(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then  @meals_controller.edit
    when 9 then @running = !@running
    end
  end
end
