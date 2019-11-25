class Genre
  attr_accessor :name
  @@all=[]
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
    genre = Genre.new(name)
    genre.save
    genre
  end
end
