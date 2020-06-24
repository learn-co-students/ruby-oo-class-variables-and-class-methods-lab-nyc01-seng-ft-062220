require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
        #binding.pry
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
        @@genres.inject(Hash.new(0)) {|type, amount| type[amount] += 1 ;type}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) {|name, amount| name[amount] += 1 ;name}
    end

end
