require_relative 'products.rb'
require_relative 'modules.rb'
require_relative 'menu.rb'
require_relative 'cart.rb'
require_relative 'db.rb'

include Utils

menu      = Menu.new
cart      = Cart.new
product   = Products.new

listCart  = Array.new

connection = DataBase.new
link = connection.openConnection

menu.main

while 0 == 0

  STDOUT.flush
  menuEntry = gets.chomp

  case menuEntry.to_i
  when 1
    system("clear")
    product.list(link)
    menu.cart

  when 2
    system("clear")
    product.listOffers(link)
    cart.list(link, listCart)
    cart.calculate(link, listCart)
    menu.cart

  when 3
    system("clear")
    product.list(link)
    cart.list(link, listCart)
    cart.calculate(link, listCart)
    menu.cart

  when 4
    system("clear")
    product.list(link)
    menu.crudProducts

  when 5
    system("clear")
    product.listOffers(link)
    menu.crudOffers

  when 6
    menu.main

  when 7
    id = addCart
    listCart = cart.add(id, listCart)
    productAdded
    system("clear")
    product.list(link)
    cart.list(link, listCart)
    cart.calculate(link, listCart)
    menu.cart

  when 8
    id = removeCart
    listCart = cart.remove(id, listCart)
    productRemoved
    system("clear")
    product.list(link)
    cart.list(link, listCart)
    cart.calculate(link, listCart)
    menu.cart
=begin
  when 10
    product.create(link)
    product.list(link)

  when 11
    product.delete(link)
    product.list(link)

  when 12
    product.update(link)
    product.list(link)

  when 13
    product.createOffer(link)
    product.list(link)

  when 14
    product.deleteOffer(link)
    product.list(link)

  when 15
    product.updateOffer(link)
    product.list(link)
=end
  when 333
    pwd = validatePWD
    if pwd == 1
      menu.admin
    else
      menu.main
    end

  when 0
    break

  else
    outOfRange
    menu.main
  end
end
