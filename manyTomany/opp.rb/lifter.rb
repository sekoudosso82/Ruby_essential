class Lifter 
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

    # instance method 
    # return all memberships for this specific lifter 
    def memeberships 
        Membership.all.select do |memebership| 
            memebership.lifter == self 
        end 
    end 

    # return the list of all gym that a specific lifter has memberships to 
    def gyms 
       self.memeberships.map do |memebership| 
            memebership.gym  
        end 
    end 
    
    # class method 
    def self.all 
        @@all
    end 
end