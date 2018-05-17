require 'pry'
class Song 
  
<<<<<<< HEAD
  @@all = []
  
  attr_accessor :name, :artist
=======
  attr_reader :name, :artist
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  
  def initialize(name)
    @name = name
  end
  
  def name=(name)
    @name = name
  end
  
<<<<<<< HEAD
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(name)
  end
  
  def save
    @@all << self
    self
  end
  
  def self.new_by_filename(file)
    a, s = file.split(" - ")
    new_song = Song.new(s)
    new_song.artist_name = a
    new_song.save
=======
  def artist=(artist)
    a_n = artist.name
    a_i = Artist.find_or_create_by_name(a_n)
    binding.pry
    @artist = a_i.name
  end
  
  def self.new_by_filename(file)
    file_parse = file.chomp(".mp3").split(" - ")
    n = file_parse[1]
    a = file_parse[0]
    f = n.split(" ").join("_").downcase
    f = Song.new(n)
    @artist = artist=(a)
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  end
end 