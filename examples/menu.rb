require 'colorize'

class Menu

  def initialize ()
  end

  def main
    mainMenu = Hash.new
    mainMenu[1] = "LIST ALL PRODUCTS"
    mainMenu[2] = "LIST ALL OFFERS"
    mainMenu[3] = "SEE CART"
    mainMenu[0] = "EXIT"

    system("clear")
    puts "\n\n\n************************eCommerce************************\n\n".green

    mainMenu.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n************************eCommerce************************\n\n".green
    puts "Enter an option to continue:\t".green
  end

  def cart
    cartMenu = Hash.new
    cartMenu[7] = "ADD PRODUCT TO CART"
    cartMenu[8] = "REMOVE PRODUCT FROM CART"
    cartMenu[6] = "BACK TO MAIN MENU"

    puts "\n\n\n************************CART************************\n\n".green

    cartMenu.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n************************CART************************\n\n".green
    puts "Enter an option to continue:\t".green
  end

  def admin
    adminMenu = Hash.new
    adminMenu[4] = "EDIT PRODUCTS"
    adminMenu[5] = "EDIT OFFERS"
    adminMenu[6] = "EXIT ADMIN MODE"
    adminMenu[0] = "EXIT"

    system("clear")
    puts "\n\n\n************************ADMIN MODE************************\n\n".green

    adminMenu.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n************************ADMIN MODE************************\n\n".green
    puts "Enter an option to continue:\t".green
  end

  def crudProducts
    crudMenuProducts = Hash.new
    crudMenuProducts[10] = "CREATE PRODUCTS"
    crudMenuProducts[11] = "DELETE PRODUCTS"
    crudMenuProducts[12] = "UPDATE PRODUCTS"
    crudMenuProducts[5]  = "EDIT OFFERS"
    crudMenuProducts[6]  = "EXIT ADMIN MODE"
    crudMenuProducts[0]  = "EXIT"

    puts "\n\n\n************************ADMIN MODE************************\n\n".green

    crudMenuProducts.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n************************ADMIN MODE************************\n\n".green
    puts "Enter an option to continue:\t".green
  end

  def crudOffers
    crudMenuOffers = Hash.new
    crudMenuOffers[13] = "CREATE OFFERS"
    crudMenuOffers[14] = "DELETE OFFERS"
    crudMenuOffers[15] = "UPDATE OFFERS"
    crudMenuOffers[5]  = "EDIT PRODUCTS"
    crudMenuOffers[6]  = "EXIT ADMIN MODE"
    crudMenuOffers[0]  = "EXIT"

    puts "\n\n\n************************ADMIN MODE************************\n\n".green

    crudMenuOffers.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n************************ADMIN MODE************************\n\n".green
    puts "Enter an option to continue:\t".green
  end
end
