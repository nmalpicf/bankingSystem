require 'mysql2'

class DataBase

  def initialize ()
  end

  def openConnection
    connection = Mysql2::Client.new(
      :host     => "18.218.118.55",
      :username => "licitamatic",
      :password => "%z3b]y^gJa]UIR9~5}u6",
      :port     => "3306",
      :database => "bankingSys")

    return connection
  end
end
