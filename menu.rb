require 'colorize'

class Menu
  def initialize ()
  end

  def main
    mainMenu = Hash.new
    mainMenu[1] = "Pokets"
    mainMenu[2] = "Mattress"
    mainMenu[3] = "Goals"
    mainMenu[0] = "Quit"

    puts "\n\n\n**********************BankingSys**********************\n\n".green

    mainMenu.each do |key, value|
      puts "#{key}\t#{value}".blue
    end

    puts "\n\n**********************BankingSys**********************\n\n".green
    puts "Enter an option to continue:\t".green
  end

  def is_number? (entry)
    entry.to_f.to_s == entry.to_s || entry.to_i.to_s == entry.to_s
  end
end
