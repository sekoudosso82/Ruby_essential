class Pirate
    attr_accessor :name, :booty, :ship, :location_of_treasure, :id

    DB = SQLite3::database.new("./db/database.db")

    # constructor 
    def initialize(name, booty, ship, location_of_treasure, id)
        @name = name
        @booty =booty
        @ship =ship
        @location_of_treasure  =  location_of_treasure 
        @id = nil  

    end

    def self.all 
        pirates = DB.execute("
            select * 
            from pirates ; 
            ")
        pirates.map do |pirate| 
            Pirate.new(pirate[1], 
                pirate[2], 
                pirate[3],
                pirate[4],
                pirate[0])
            end 
        end 

        def self.find (id) 
            pirates = DB.execute("
                select * 
                from pirates 
                where pirates.id = #{id}; 
                ").flatten 
            or 
            pirate.all.find do |pirate|
                pirate.id == id
            end 
        end

        def save 
            # pirates = DB.execute("
            #     insert into pirates (name, booty, ship, location_of_treasure) 
            #     values ('#{@name}', #{@booty}, '#{@ship}', '#{@location_of_treasure}')
            
            # or 
            pirates = DB.execute("
                insert into pirates (name, booty, ship, location_of_treasure) 
                values (?, ?, ?, ?)",
                @name, @ship, "#{@booty}", @location_of_treasure)
            end
        end 
        
    end

end 