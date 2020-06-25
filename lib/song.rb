class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count +=1 
        @@genres.push(genre)
        @@artists.push(artist)
    end     

    def self.count
        @@count
    end 
    
    def self.genres
       @@genres.uniq 
       #here you should control for unique 
    end     

    def self.artists
        @@artists.uniq 
       #here control for unique 
    end 
    
    def self.genre_count
        dictionary = {}
        @@genres.each do |genre|
            if !dictionary[genre]
                dictionary[genre] = 0
            end
            dictionary[genre]+=1
        end   
        dictionary      
    end     
    
    def self.artist_count
        dictionary = {}
        @@artists.each do |artist|
            if !dictionary[artist]
                dictionary[artist] = 0
            end
            dictionary[artist]+=1
        end
        dictionary  
    end           
end    