require 'pry'
class MP3Importer 
<<<<<<< HEAD
  attr_reader :path
  
=======
  attr_accessor :files
  attr_reader :path
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  def initialize(file_path)
    @path = file_path
  end
  
  def files
<<<<<<< HEAD
    @files ||= Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import
    files.each {|f| Song.new_by_filename(f)}
=======
    @files = Dir.entries(@path).select {|f| !File.directory? f}
    @files
  end
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
>>>>>>> a33263865546c5df06a2becf99a207b478ec4f6d
  end
end 