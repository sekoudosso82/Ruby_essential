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

    # return the cost of a specific lifter 
    def total_membership_cost 
        self.memeberships.map do |memebership|
            memebership.cost  
        end.sum 
    end 

    # sign up for a new membership 
    def sign_up (gym, cost) 
        Membership.new(cost, gym, self)
    end 

    
    # class method 
    def self.all 
        @@all
    end 
    
    # return the average lift total of all lifters 
    def lift_total 
        @@all.map do |lift| 
            lift.lift_total
            
        end
    end 
    def reduce_lift_total 
        self.litf_total.sum
        # self.litf_total.reduce(0) { |sum, num| sum + num }/@@all.length
    end 
    def average_lift_total 
        self.reduce/@@all.length
    end 
    # or 
    def average_lift_total 
        lift_sum = @@all.map do |lift| 
            lift.lift_total
            
        end.sum
        lift_sum/@@all.length
    end 
end