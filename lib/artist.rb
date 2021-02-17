require 'pry'
class Artist
    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        find = self.all.find {|artist| artist.name == name}
      
        if find
            find
        else 
            create = self.new(name)
            create
        end
        #binding.pry
    end

    def print_songs
        songs.each {|song| puts song.name} #prints the name of the songs
    end

    def self.all
        @@all
    end
end