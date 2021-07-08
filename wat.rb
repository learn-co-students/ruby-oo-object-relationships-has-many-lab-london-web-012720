class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end




kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline", "disco")
drake = Artist.new("Drake")

kiki.artist = drake
#
# drake.add_song(kiki)
# drake.add_song(hotline)

lil_nas_x = Artist.new("Lil Nas X")
old_town_road = Song.new("Old Town Road","hip-hop")

old_town_road.artist = lil_nas_x

old_town_road.artist.name #=> "Lil Nas X"





p drake.songs
# p drake.artist.name
