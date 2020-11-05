class Building 
    attr_reader :name, :num_floor 
    def initialize(name, num_floor)
        @name = name 
        @num_floor = num_floor
    end
    def have_walls 
        put " yay we have got walls!"
    end
    def have_roofs 
        put " phew! there's a roof!"
    end
end 

class School < Building
    attr_writer :name 
    
    def initialize(name, num_classroom, num_floor)
        super(name, num_floor) 
        @num_classroom = num_classroom 
    end
    def have_classrooms 
        puts " Children be learning! "
    end 
    def beef 
        puts "MCSTEAKER"
    end
    def have_roofs 
        beef 
        puts "Hey our roof is flat!"
    end
end 

class House < Building
    def have_bedrooms 
        puts " Beds are great! "
    end 
    
end 

Flatiron = School.new("Flatiron, 5, 3")
home1 = Home.new("bellvue", 2)
