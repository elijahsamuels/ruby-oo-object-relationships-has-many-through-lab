class Artist

    # attr_accessor :name
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end

    # iterates through all songs and finds the songs that belong to that artist. use .select 
    def songs
        Song.all.select { |songs| songs.artist == self }
    end
        # given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

        # iterates over that artist's songs and collects the genre of each song.
    def genres
        songs.collect { |a| a.genre}

    end

end
