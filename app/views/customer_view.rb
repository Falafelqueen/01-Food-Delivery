class CustomerView
  def display(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name} - #{customer.address}€"
    end
  end

  def ask_for_stuff(stuff)
    puts "#{stuff}?"
    gets.chomp
  end
end
