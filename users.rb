require 'colorize'

class Users
  def initialize ()
  end

  def authentication
    puts "\n\n\n**********************BankingSys**********************\n\n".green
    puts "Log In (l) or Sign Up (s)?".green
    STDOUT.flush
    menuEntry = gets.chomp

    case menuEntry.to_s
      when 'l'
        login

      when 's'
        signup

      else
        puts "Enter a valid option".red
        sleep 1
        auth = false
    end

    return auth
  end

  def login
    puts 'log in func'.blue
    sleep 1
    auth = true
    return auth
  end

  def signup
    puts 'sign up func'.blue
    sleep 1
    auth = true
    return auth
  end
end
