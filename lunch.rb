#Nick Ames
#Nov 9, 2017

#To Do List
# 1. User chooses from a list of main dishes
# 2. The user chooses 2 side dish items
# 3. The computer repeats users side dish order
# 4. Display list of items ordered
# 5. Display total price of order

@main = [
  {item: 'Meatloaf', price: 5.00},
  {item: 'Mystery Meat', price: 3.00},
  {item: 'Slop', price: 1.00},
]

@side = [
  {item: 'Carrots', price: 1.75},
  {item: 'Mystery Yogurt', price: 1.00},
  {item: 'Beef Jerkey', price: 0.50},
]

@total_item = []
@total_price = []

def menu
  puts "What main dish would you like?"
  @main.each_with_index { |food, index| 
    puts "#{index + 1}: #{food[:item]} $#{food[:price]} "
    }
  selection_1
  puts "What side dish would you like?"
  @side.each_with_index { |food, index| 
    puts "#{index + 1}: #{food[:item]} $#{food[:price]} "
    }
  selection_2
  puts "What additional side dish would you like?"
  @side.each_with_index { |food, index| 
    puts "#{index + 1}: #{food[:item]} $#{food[:price]} "
    }
  selection_3
end

def selection_1
  name = gets.to_f

    if name == 1
      @total_item << @main[0][:item]
      @total_price << @main[0][:price]
    elsif name == 2
      @total_item << @main[1][:item]
      @total_price << @main[1][:price] 
    elsif name == 3
      @total_item << @main[2][:item]
      @total_price << @main[2][:price]
    else
      puts "Not a valid item. Please try again"
      menu
    end
end

def selection_2
  name = gets.to_f

  if name == 1
    @total_item << @side[0][:item]
    @total_price << @side[0][:price]
  elsif name == 2
    @total_item << @side[1][:item]
    @total_price << @side[1][:price] 
  elsif name == 3
    @total_item << @side[2][:item]
    @total_price << @side[2][:price]
    else
      puts "Not a valid item. Please try again"
      menu
    end
end  

def selection_3
  name = gets.to_f
  
  if name == 1
    @total_item << @side[0][:item]
    @total_price << @side[0][:price]
  elsif name == 2
    @total_item << @side[1][:item]
    @total_price << @side[1][:price] 
  elsif name == 3
    @total_item << @side[2][:item]
    @total_price << @side[2][:price]
  else
    puts "Not a valid item. Please try again"
    menu
  end
  checkout
end  

def checkout 
  puts "Your order consists of: "
  puts @total_item.join(', ')
  puts "Your order total is: #{@total_price.reduce(0, :+)}"
end

menu