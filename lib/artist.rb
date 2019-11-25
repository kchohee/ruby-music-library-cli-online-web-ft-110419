class Artist
  attr_accessor :name
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
    artist = Artist.new(name)
    artist.save
    artist
  end
end
