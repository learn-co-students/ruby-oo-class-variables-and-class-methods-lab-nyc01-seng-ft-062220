require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
   
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
        if artist_count[artist]
           artist_count[artist] += 1
        else
            artist_count[artist] = 1
            end
        end
        return artist_count
    end 

    def self.genre_count
        genre_count = {}
        @@genres.each do |song_genre|
        if genre_count[song_genre]
           genre_count[song_genre] += 1
        else
            genre_count[song_genre] = 1
            end
        end
        return genre_count
    end 
end
# song1 = Song.new("Time", "Pink Floyd", "Rock")
# song2 = Song.new("Rodeo", "Travis Scott", "Hip Hop")
# song3 = Song.new("Pony", "G", "RnB")


# binding.pry
# 0