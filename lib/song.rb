class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  def initialize(name)
    self.name = name
  end
  def self.all
    @@all
  end
  def self.destory_all
    @@all.clear
  end
  def save
    @@all << self
  end
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
end
