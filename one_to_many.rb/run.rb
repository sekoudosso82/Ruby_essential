require 'pry'
# use require_relative to access other files 
require_relative './rubySyntax.rb' 
require_relative './continent.rb'
require_relative './country.rb'

    
    # create new intance 
    martini = Drink.new("Dirty Martini", 3, true, ["Vermouth", "olive", "Gin"])
    mach = Drink.new("Macchiatto", 8, false, ["Coffee", "love", "Puppies"])
    
    # create continent instance 
    asia = Continent.new("Asia", "temperate") 
    europe = Continent.new("Europe", "temperate")
    antartica = Continent.new("antartica", "arctic")

    # create country instance 
    khaz = Country.new(18000000, "Khazikstan", "Nur-Sultan", "Tenge", europe)
    egypt = Country.new(30000000, "Egypt", "Cairo", "Pound", asia)
    china = Country.new(1300000000, "China", "Beijing", "RMB", asia)
    santas_workshop = Country.new(10, "Santa's Workshop", "Santa's chair", "Good deeds", antarctica)
# binding.pry
    