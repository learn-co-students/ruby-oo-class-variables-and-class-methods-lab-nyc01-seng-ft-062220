require 'pry'

class Song 
     
    attr_accessor :name, :artist, :genre
    @@count=0
    @@artists=[] 
    @@genres=[]
    def initialize(name, artist, genre) 
        @name=name 
        @artist=artist 
        @genre=genre 
        @@count+=1
        @@artists << artist
        @@genres << genre
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
genre_count={}
    @@genres.map do |ele|
        if genre_count[ele]
            genre_count[ele]+=1
        else 
            genre_count[ele]=1
        end 
    end
    genre_count
end
 
def self.artist_count
artist_count={}
@@artists.map do |ele|
    if artist_count[ele]
        artist_count[ele]+=1 
    else 
        artist_count[ele]=1 
    end      
end
artist_count
end 
end
