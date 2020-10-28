class Appoinment 
    # instance var 
    # attr_reader :attribute_name
    # attr_writer :attribute_name
    # attr_accessor
    attr_accessor :date, :time, :doctor, :patient, :attended

    # class var 
    @@all = []

    # constructor 
    def initialize(date, time, doctor, patient )
        @date = date  
        @time = time 
        @doctor = doctor 
        @patient = patient
    end 

    # instance methods 

    # class methods 
    def sell.all 
        @@all 
    end 

    
end 
