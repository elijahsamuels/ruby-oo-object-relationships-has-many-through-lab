class Patient

    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

        # iterates through all songs and finds the songs that belong to that genre.
    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end

        # iterates over the genre's collection of songs and collects the artist that owns each song
    def doctors
        appointments.collect { |a| a.doctor}
    end
end
    
  
  
  