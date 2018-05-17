<<<<<<< HEAD
class Artist 
  attr_accessor :name
=======
require 'pry'

class Artist 
  
  attr_reader :name
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def name=(name)
    @name = name
  end
  
  def songs
   @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
<<<<<<< HEAD
  def self.all 
    @@all
  end 
  
=======
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  def self.find_or_create_by_name(name)
    self.new(name) if @@all.none? {|a| a.name == name}
    @@all.detect {|a| a if a.name == name}
  end
  
  def print_songs
<<<<<<< HEAD
    @songs.each {|s| puts s.name}
=======
    @songs.each {|s| s}
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  end
  
end