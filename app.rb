require_relative 'users.rb'
require_relative 'menu.rb'
require_relative 'db.rb'

menu       = Menu.new
users      = Users.new
connection = DataBase.new

link = connection.openConnection
auth = false

while auth == false
  system ("clear")
  auth = users.authentication
end

system ("clear")
menu.main

while 0 == 0
  STDOUT.flush
  menuEntry = gets.chomp

  while (!menu.is_number?(menuEntry)) do
    puts "Enter a valid option".red
    sleep 1
    system ("clear")
    menu.main
    menuEntry = gets.chomp
  end

  case menuEntry.to_i
    when 1
      puts "Pokets"
      system ("clear")
      menu.main

    when 2
      puts "Mattress"
      system ("clear")
      menu.main

    when 3
      puts "Goals"
      system ("clear")
      menu.main

    when 0
      break

    else
      puts "Enter a valid option".red
      sleep 1
      system ("clear")
      menu.main
  end
end
