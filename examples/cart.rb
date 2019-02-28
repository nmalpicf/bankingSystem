require_relative 'products.rb'
require 'colorize'

class Cart

    def initialize ()
    end

    def add (id, cart)
      return cart << id
    end

    def remove (id, cart)
      cart.slice!(cart.index(id))
      return cart
    end

    def list (link, cart)
      if cart.length != 0
        product = Products.new
        result = product.listByID(link, cart)
      else
        cart << 0
        product = Products.new
        result = product.listByID(link, cart)
      end
    end

    def calculate (link, listCart)
    end
end
