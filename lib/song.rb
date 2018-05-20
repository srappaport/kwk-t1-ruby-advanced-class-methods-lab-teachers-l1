class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

def self.find_by_name(name)
  @@all.detect{|song| song.name == name}
end

def self.find_or_create_by_name(song)
  if self.find_by_name(song) #fix me
    self.find_by_name(song)
  else
    self.create_by_name(song)
  end
end

def self.alphabetical
  sorted = self.all.sort_by {|song| song.name} #fix me
  sorted
end

def self.new_from_filename(filename)
  parts = filename.split(" - ")

    name = parts[1].chomp(".mp3")
    artist = parts[0]

    song = self.new # creates instance of  Song.new
    song.name = name
    song.artist_name = artist
    song
end


def self.create_from_filename(filename)
  var = self.new_from_filename(filename)
  song = self.create
  song.name = var.name
  song.artist_name = var.artist_name
  song
end


def self.destroy_all
  self.all.clear
end

end

#song = Song.new_from_filename("Thundercat - For Love I Come.mp3")
