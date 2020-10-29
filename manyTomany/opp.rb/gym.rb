class Gym 
    # instance var 
    # attr_reader 
    # attr_writer 
    # attr_accessor
    attr_accessor :name, :lift_total 

    # class var 
    @@all = [] 

    # constructor 
    def initialize(name, lift_total) 
        @name = name 
        @lift_total = lift_total 
        
        @@all << self 
    end

    # instance methods 

    # class method 
    def self.all 
        @@all
    end 
end