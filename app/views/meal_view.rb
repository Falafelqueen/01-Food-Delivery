class MealView
  def display(meals)
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}€"
    end
  end

  def ask_for_stuff(stuff)
    puts "#{stuff}?"
    gets.chomp
  end

end
