class Membership 
    # instance var 
    # attr_reader 
    attr_reader :gym, :lifter
    # attr_writer 
    # attr_accessor
    attr_accessor :cost, 

    # class var 
    @@all = [] 

    # constructor 
    def initialize(cost, gym, lifter) 
        @cost = cost 
        @gym = gym 
        @lifter = cost 
        @@all << self 
    end

    # instance methods 
    
    # class method 
    def self.all 
        @@all
    end 
end