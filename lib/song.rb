class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist, name, genre = filename.split(/ - /)
    song = Song.new name
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    @artist = artist
  end
end
