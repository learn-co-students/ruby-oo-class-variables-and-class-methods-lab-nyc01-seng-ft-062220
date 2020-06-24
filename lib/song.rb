require "pry"

class Song
attr_accessor :song_name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        
        
        @@genres << genre
        @@artists << artist
        
    end

    def self.count
        @@count
    end

    def self.genres
        #binding.pry
        @@genres.uniq #https://stackoverflow.com/questions/8365721/remove-duplicate-elements-from-array-in-ruby#:~:text=uniq%20removes%20all%20duplicate%20elements,beauties%20of%20the%20Ruby%20language.&text=You%20can%20return%20the%20intersection.&text=This%20will%20also%20delete%20duplicates.
        #@@genres.push(@genre) unless @@genres.include?(@genre) #https://stackoverflow.com/questions/14004325/add-element-to-an-array-if-its-not-there-already
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #binding.pry
        @genre_hash = Hash.new(0)
        @@genres.each { | count | @genre_hash.store(count, @genre_hash[count]+1) } #https://stackoverflow.com/questions/1765368/how-to-count-duplicates-in-ruby-arrays
        @genre_hash
    end

    def self.artist_count
        @artist_hash = Hash.new(0)
        @@artists.each { | count | @artist_hash.store(count, @artist_hash[count]+1) } #https://stackoverflow.com/questions/1765368/how-to-count-duplicates-in-ruby-arrays
        @artist_hash
    end


    def name
        @name
    end

end