class Patient  
    # instance var 
    # attr_reader :attribute_name
    # attr_writer :attribute_name
    # attr_accessor
    attr_accessor :name, :birth_date 

    # class var 
    @@all = []

    # constructor 
    def initialize(name, birth_date )
        @name = name  
        @birth_date = birth_date 
        
        @@all << self
    end 

    # instance methods 
    def appointment 
        # return an array of all appointment for this patient 
        Appoinment.all.select do |appointment|
            appointment.patient = self 
        end 
    end
    def doctors 

        # doctors = []
    
        # patients_appointments.each do |appointment|
        #   doctors << appointment.doctor
        # end
    
        # doctors.uniq (see unique doctors)
    
        self.appointments.map do |appointment|
          appointment.doctor
        end.uniq
      end

    # class methods 
    def sell.all 
        @@all 
    end 
  
end 
