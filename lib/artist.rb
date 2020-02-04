require "pry"
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    
    def songs
  Song.all.each {|s|s.artist == self}
    end

    def add_song(song) #<Song:0x00007f974603fa18 @artist="Hello">
        song.artist = self

    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
      end

      def self.song_count
        Song.all.map {|s|s.artist}.size
      end
end

