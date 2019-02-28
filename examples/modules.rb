require 'io/console'
require 'colorize'

module Utils
  def pressKey
    puts "\n\n\n\n\nPRESS ANY KEY TO CONTINUE...".red
    STDIN.getch
  end

  def validatePWD
    puts "\nENTER ADMIN PASSWORD:".green
    pwd = STDIN.noecho(&:gets).chomp
    if pwd.to_s == "admin"
      return 1
    else
      puts "\n\nERROR: WRONG PASSWORD".red
      sleep 1
      return 0
    end
  end

  def outOfRange
    puts "\n\nERROR: INPUT OUT OF RANGE".red
    sleep 1
  end

  def addCart
    puts "\n\nENTER REF TO ADD PRODUCT TO CART".red
    STDOUT.flush
    return id = gets.chomp
  end

  def removeCart
    puts "\n\nENTER REF TO REMOVE PRODUCT FROM CART".red
    STDOUT.flush
    return id = gets.chomp
  end

  def productAdded
    puts "\n\nPRODUCT ADDED CORRECTLY".red
    sleep 1
  end

  def productRemoved
    puts "\n\nPRODUCT REMOVED CORRECTLY".red
    sleep 1
  end
end
