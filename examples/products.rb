require_relative 'db.rb'
require 'colorize'

class Products
  attr_accessor :id, :name, :price, :stock, :measure, :offers

  def initialize ()
  end

  def create(link)
    STDOUT.flush

    puts "\n\nENTER THE NEW PRODUCT'S NAME:"
    name = gets.chomp

    puts "\nENTER THE NEW PRODUCT'S PRICE:"
    price = gets.chomp

    puts "\n\nENTER THE NEW PRODUCT'S STOCK:"
    stock = gets.chomp

    puts "\n\nENTER THE NEW PRODUCT'S MEASURE: unit/weight"
    measure = gets.chomp

    puts "\n\nENTER THE NEW PRODUCT'S MEASURE: unit/weight"
    offers = gets.chomp

    connection = DataBase.new
    query = "#{id}, #{name}, #{price}, #{stock}, #{measure}, #{offers}"

    result = connection.insertProduct(query)
  end

  def delete (id)
  end

  def update (id)
  end

  def list (link)
    connection = DataBase.new
    result = connection.list(link).each(:as => :array)

    puts "\n\n" + "*".red * 36 + "PRODUCTS".red + "*".red * 37 + "\n\n"
    puts "*".red + " " * 6 + "REF".red + " " * 6 + "*".red + " " * 5 + "NAME".red + " " * 6 +
      "*".red + " " * 5 + "PRICE".red + " " * 5 + "*".red  + " " * 4 + "MEASURE".red +
      " " * 4 + "*".red + " " * 4 + "OFFERS".red  + " " * 5 + "*".red + "\n\n"

    result.each do |product|
      puts "*".blue + " " * 7 + "#{product[0]}\t*".blue + " " * 3 + "#{product[1]}\t*".blue +
      " " * 3 + "$#{product[2].to_f}\t*".blue + " " * 3 + "#{product[4]}\t*".blue +
      " " * 4 + "#{product[5]}\t*".blue
    end
  end

  def listByID (link, refs)
    connection = DataBase.new

    puts "\n\n" + "*".yellow * 38 + "CART".yellow + "*".yellow * 39 + "\n\n"
    puts "*".red + " " * 6 + "REF".red + " " * 6 + "*".red + " " * 5 + "NAME".red + " " * 6 +
      "*".red + " " * 5 + "PRICE".red + " " * 5 + "*".red  + " " * 4 + "MEASURE".red +
      " " * 4 + "*".red + " " * 4 + "OFFERS".red  + " " * 5 + "*".red + "\n\n"

    refs.each do |id|
      result = connection.listByID(link, id).each(:as => :array)
      result.each do |product|
        puts "*".blue + " " * 7 + "#{product[0]}\t*".blue + " " * 3 + "#{product[1]}\t*".blue +
        " " * 3 + "$#{product[2].to_f}\t*".blue + " " * 3 + "#{product[4]}\t*".blue +
        " " * 4 + "#{product[5]}\t*".blue
      end
    end
  end

  def listOffers (link)
    connection = DataBase.new

    result = connection.listOffers(link).each(:as => :array)

    puts "\n\n" + "*".red * 37 + "OFFERS".red + "*".red * 38 + "\n\n"
    puts "*".red + " " * 6 + "REF".red + " " * 6 + "*".red + " " * 5 + "NAME".red + " " * 6 +
      "*".red + " " * 5 + "PRICE".red + " " * 5 + "*".red  + " " * 4 + "MEASURE".red +
      " " * 4 + "*".red + " " * 4 + "OFFERS".red  + " " * 5 + "*".red + "\n\n"

    result.each do |product|
      puts "*".blue + " " * 7 + "#{product[0]}\t*".blue + " " * 3 + "#{product[1]}\t*".blue +
      " " * 3 + "$#{product[2].to_f}\t*".blue + " " * 3 + "#{product[4]}\t*".blue +
      " " * 4 + "#{product[5]}\t*".blue
    end
  end
end
