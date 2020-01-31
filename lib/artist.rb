class Artist

    attr_accessor :songs, :name

    @@artists = []

    def initialize(name)
        @name = name
        @songs = []
        @@artists << self
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @songs << song
    end

    def self.song_count
        count = 0
        pp @@artists
        @@artists.each {|artist| count += artist.songs.uniq.length}
        count
    end

end