class Tienda
  def initialize(nombre)
    @nombre = nombre
    @hash_users = Hash.new
  end

  def interfaz
    puts "----------------------------------------------"
    puts "Welcome to the online store: #{@nombre}" 
    puts "----------------------------------------------"
    puts "Select option number"
    puts "1. Login"
    puts "2. Register"
    puts "3. Exit"
    choice = gets.chomp
    case choice
    when "1"
      login
    when "2"
      register
    when "3"
      puts "Gracias por visitarnos"
    end

  end

  def login
    puts "Email:"
    email = gets.chomp
    puts "Password:"
    password = gets.chomp
    if @hash_users.has_key?(email) && @hash_users[email] == password
      haz_camisa
    else
      puts "Usuario o contraseña incorrectos."
    end
  end

  def register
    puts "Ingresa tu email:"
    email = gets.chomp
    puts "Crea una contraseña:"
    password = gets.chomp
    usuario = User.new(email, password)
    @hash_users[usuario.email] = usuario.password
    administrador
  end

  def administrador
    puts "Select option number"
    puts "1. Login"
    puts "2. Register"
    puts "3. Exit"
    choice = gets.chomp
    case choice
    when "1"
      login
    when "2"
      register
    when "3"
      puts "Gracias por visitarnos"
    end
  end

  def haz_camisa
    puts "Llegaste a hacer tu camisa"
  end

end

class User
  attr_accessor :email, :password
  def initialize(email, password)
    @email = email
    @password = password
  end
end

tienda = Tienda.new("La tienda de Mau")
tienda.interfaz