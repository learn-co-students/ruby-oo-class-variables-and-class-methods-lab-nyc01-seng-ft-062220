class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist
        @@count += 1
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

    def self.genre_count
        genre_count = {}
        @@genres.each do |element|
            if genre_count[element] == nil
                genre_count[element] = 1
            else
                genre_count[element] += 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |element|
            if artist_count[element] == nil
                artist_count[element] = 1
            else
                artist_count[element] += 1
            end
        end
        artist_count
    end

end