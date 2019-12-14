class Genre 
attr_accessor :name, :song, :artists
@@all = []
    
    def initialize(name)
   @name = name 
    @@all << self
    end 

    def self.all 
        @@all
    end 

    def songs 
        Song.all.select do |songs| 
            songs.genre == self
        end 
    
    end 
  
     def artists 
     self.songs.map do |song|
        song.artist
     end 
     end 



end 