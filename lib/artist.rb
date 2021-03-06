class Artist
    attr_accessor :name, :song
    
    # has an attr_accessor for name
    # is initialized with a name
    
    def initialize (name)
        @name = name
    end
    
    #has many songs
    
    def songs
        Song.all.select{|song|song.artist ==self}
    end
    
    #takes in an argument of a song and associates that
    #song with the artist by telling the song
    #that it belongs to that artist
    
    def add_song(song)
        song.artist = self
    end
    
    #takes in an argument of a song name, creates a new
    #song with it and associates the song and artist
    
    def add_song_by_name(name)
        singer=Song.new(name)
        add_song(singer)
    end
    
    #is a class method that returns the total number of songs
    #associated to all existing artists
    
    def self.song_count
    Song.all.count
    end
end