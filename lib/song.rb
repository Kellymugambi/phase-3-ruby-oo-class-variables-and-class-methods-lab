require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres =[]
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
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
        counts = Hash.new(0)
        @@genres.each { |genre| counts[genre] += 1 }
        counts
    end

    def self.artist_count
        counts = Hash.new(0)
        @@artists.each do |artist|
            counts[artist] += 1
        end
        counts
    end
end
hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
hit_me.name
hit_me.artist
binding.pry