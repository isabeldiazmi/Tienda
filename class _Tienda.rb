class Tienda
  def initialize(nombre)
    @nombre = nombre
  end

  def interfaz
    puts "Welcome to the online store: #{@nombre}" 
    puts "__________________________________________________"
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
  end

  def register
  end

end