class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = [], @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @@artists << artist
        @artist = artist
        @@genres << genre 
        @genre = genre
        @@count = @@count + 1
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
        #{"rap" => 5, "rock" => 2}
        genre_map = {}
        @@genres.count do |each|
            if genre_map[each]
                genre_map[each] += 1 
            else
                genre_map[each] = 1
            end
        end
        genre_map
    end

    def self.artist_count
        #{"Beyonce" => 17, "Jay-Z" => 40}
        artist_map = {}
        @@artists.count do |each|
            if artist_map[each]
                artist_map[each] += 1 
            else
                artist_map[each] = 1
            end
        end
        artist_map
    end

end


