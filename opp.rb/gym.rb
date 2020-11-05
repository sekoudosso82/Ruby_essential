class Gym 
    # instance var 
    # attr_reader 
    # attr_writer 
    # attr_accessor
    attr_accessor :name

    # class var 
    @@all = [] 

    # constructor 
    def initialize(name) 
        @name = name 

        @@all << self 
    end

    # instance methods 

    # return all memberships for this specific gym 
    def memeberships 
        Membership.all.select do |memebership| 
            memebership.gym == self 
        end 
    end

    # return the list of all lifter that a specific gym has 
    def lifters 
        self.memeberships.map do |memebership| 
             memebership.lifter  
         end 
     end 
    
     # return the list of the name of all lifters that have a membership for this specific gym 
    def lifters_name 
        self.lifters.map do |lifter| 
             lifter.name  
         end 
     end 
    
    total lift of a specific gym 
    def combined_lift 
        self.lifters.map do | lifter | 
            lifter.lift_total
        end.sum
    end 

    # class method 
    def self.all 
        @@all
    end 
end