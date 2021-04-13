system("cls") || system("clear")

#main_menu
def main()
  arr = []
  print_menu
  print "Please enter your name: "
  name = gets.chomp.capitalize

  arr << name

  puts "Enter the amount of items: "

  enter_price


  # while (!([1, 2, 3].include?(selection.to_i)))
  #   puts "Invalid option entered! Please enter 1, 2 or 3 only:"
  #   selection = gets.chomp
  # end
end

  def print_menu
    print_line
    puts "|          Welcome to KKS Supermarket            |"
    print_line
  end

  def print_line
    puts "="*50
  end

def enter_price()
  arr = []
  while price = gets.chomp
    if price != "x"
      puts "Price entered is RM%0.2f, enter x to check out" % [price]
      arr << price.to_i
      @sum = arr.inject(:+)
    else
      puts "Total price is RM%0.2f" % [@sum]
      discount()
      check_out()
    end
  end
end

def discount()
  puts "Do you have a discount voucher? Enter y to enter discount code, enter n to proceed with check out"
  selection = gets.chomp.downcase
  while (selection == "y")
    enter_discount()
  end
  while (selection == "n")
    check_out()
  end
end

def enter_discount()
  while voucher = gets.chomp
    if voucher != "lucky"
      puts "Your voucher is invalid or has expired"
    else
      puts "Your total amount after 10% discount is RM#{@sum - (@sum*20/100)}"
      final_payment()
    end
  end
end

def final_payment
  arr = []
  puts "Enter the amount to pay"
  payment = gets.chomp.to_i
  (payment != @sum) && (payment < @sum)
    if payment.to_i < @sum
      puts "Insufficient amount of cash entered"
      arr << payment.to_i
    else
      puts "Balance #{payment - @sum}"
    end
    puts "Thank you for shopping with KKS Supermarket."
  end

def exit_new
  puts "Exit"
end

main()
