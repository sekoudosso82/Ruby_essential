class Pirate
    attr_accessor :name, :ship, :booty, :location_of_treasure 

    DB = SQLite3::Database.new("./db/databse.db")

    def initialize (name, ship, booty, location_of_treasure)
        @name = name
        @ship = ship
        @booty = booty 
        @location_of_treasure = location_of_treasure
    end 

end
