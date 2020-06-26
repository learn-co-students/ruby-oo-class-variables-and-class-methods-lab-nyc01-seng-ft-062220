require 'pry'
class Song
    attr_accessor :name, :artist, :genre
@@count = 0
@@names = []
@@artists = []
@@genres = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@names << name
    @@artists << artist
    @@genres << genre
    @@count += 1
end

def self.count #total number of songs
    @@count
end

def self.artists #array of all artists
    @@artists.uniq
    #binding.pry
end

def self.genres #array of all genres
    @@genres.uniq
end

def self.genre_count #hash of k;genre and v:total # songs
    all_genres = {}
    @@genres.each do |genre|
        if all_genres[genre]
            all_genres[genre] += 1
        else
            all_genres[genre] = 1
        end    
    
    end
    all_genres
end

def self.artist_count #hash of k:artist and v:total # songs
    all_artists = {}
    @@artists.each do |artist|
        if all_artists[artist]
            all_artists[artist] += 1
        else
            all_artists[artist] = 1
        end    
    
    end
    all_artists
end

end

