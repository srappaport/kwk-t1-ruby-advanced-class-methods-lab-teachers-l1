class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    song = self.new
    song.name = name
    #@@all << self.new
    @@all << song
  end


end

Song.create("Blank Space")
