
class Country 
    # attr_writer 
    attr_reader 
    attr_accessor :population, :name, :capital_city, :currency, :continent
    # class var 
    @@all = []
    # instance var

    # constructor 
    def initialize(population, name, capital_city, currency, continent)
        @population = population
        @name = name 
        @capital_city = capital_city 
        @currency = currency
        @continent = continent

        @@all << self     
    end 

    # instance method

    def delete(target_name)
        # look through COuntry.all, find country who's name matches the target 
    end
    
    # class method 
    def self.all 
        @@all 
    end
end 
