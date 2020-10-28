class Continent 
    # attr_writer 
    attr_reader :name 
    attr_accessor :climate, :countries
    # class var 
    @@all = []
    # instance var

    # constructor 
    def initialize(name, climate)
        @name = name
        @climate = climate
        # @countries = countries

        @@all << self 
    end 

    # instance method
    def countries  
        Country.all.select do |country|
            country.continent == self  
        end
    end


    # class method 
    def self.all 
        @@all
    end

end
