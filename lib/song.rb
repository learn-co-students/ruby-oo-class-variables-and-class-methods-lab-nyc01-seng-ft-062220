require 'pry'

class Song


    @@count = 0
    @@genres = []
    @@artists = []


    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
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
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
            genre_count[genre] += 1
            else
            genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |each_artist|
            if artist_count[each_artist]
                artist_count[each_artist] += 1
            else
                artist_count[each_artist] = 1
            end
        end
        artist_count
    end


end