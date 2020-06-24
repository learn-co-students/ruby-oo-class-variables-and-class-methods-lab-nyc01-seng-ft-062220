require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []


    attr_accessor :name, :artist, :genre
   
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@artists << artist
      @@genres << genre
      @@count += 1
    end
   
    def self.all
      @@all
    end
    
    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = Hash.new(0)
        @@genres.each {|ele| hash[ele] += 1}
        hash
    end

    def self.artist_count
        hash = Hash.new(0)
        @@artists.each {|artist| hash[artist] += 1}
        hash
    end
    # binding.pry
end