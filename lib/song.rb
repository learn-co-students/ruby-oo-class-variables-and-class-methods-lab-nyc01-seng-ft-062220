class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre


  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.to_set
  end

  def self.genres
    @@genres.to_set
  end

  def self.genre_count
    list = Hash.new(0)
    @@genres.each do |genre|
      list[genre] += 1
    end
    list
  end

  def self.artist_count
    list = Hash.new(0)
    @@artists.each do |artist|
      list[artist] += 1
    end
    list
    #{"Brittany Spears" => 1, "Jay-Z" => 2}
  end
end
