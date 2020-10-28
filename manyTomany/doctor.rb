class Doctor
    # instance var 
    # attr_reader 
    # attr_writer 
    # attr_accessor 
    attr_accessor :name, :phone_number
    # class var 
    @@all = []
    # constructor 
    def initialize(name, phone_number)
      @name = name
      @phone_number = phone_number
  
      @@all << self
    end
    # instance methods 
    def appointments
      # returns an array of appointments for THIS doctor
      Appointment.all.select do |appointment|
        appointment.doctor == self
      end
    end
  
    def patients
      # returns an array of patients that are seeing THIS doctorr
  
      # patients don't have a direct relationship to the doctor
      # Patient.all.select do |patient|
      #   patient.
      # end
  
      # Not DRY
      # doctors_appointments = Appointment.all.select do |appointment|
      #   appointment.doctor == self
      # end
  
      # patients = []
  
      # doctors_appointments.each do |appointment|
      #   patients << appointment.patient
      # end
  
      # patients.uniq
  
      self.appointments.map do |appointment|
        appointment.patient
      end.uniq
    end
    # class methods 
    def self.all
      @@all
    end
  end