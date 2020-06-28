class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    # tracking number of new songs that are created in Song Class
    # alternatively, can't we use a class operation (called Song.count) method to count instances in @@all?
    @@count = 0 

    # collecting all genres contained within our Song class without duplicating string values of genre
    #? why do we need so many class variables?
    # alternatively, can't we use a class operation (called Song.genres or Song.artists) method to iterate through @@all and extract required data? 
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name

        @artist = artist
        @@artists << artist

        @genre = genre
        @@genres << genre

        @@count += 1

    end

    def self.all
        @@all
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

    #? can this be refactored with '.inject' or '.each_with_object' to handle nil cases with less conditional logic?
    def self.genre_count
        @@genres.each_with_object({}) do |genre, genre_hash|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
    end

    def self.artist_count
        @@artists.each_with_object({}) do |artist, artist_hash|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
    end

end