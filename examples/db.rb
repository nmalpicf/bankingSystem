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
      :database => "rappiTest")

    return connection
  end

  def insertProduct (connection, query_string)
    string = 'INSERT INTO products
                  (id, name, price, stock, measure, offers)
                  VALUES (' + query_string + ')'
    result = connection.query(string)
  end

  def list (connection)
    string = "SELECT * FROM products"
    return result = connection.query(string)
  end

  def listByID(connection, id)
      string = "SELECT * FROM products WHERE id = #{id[0]}"
      return result = connection.query(string)
  end

  def listOffers (connection)
    string = "SELECT * FROM products WHERE offers <> 'N/A'"
    return result = connection.query(string)
  end
end
