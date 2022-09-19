class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(path)
  end

  def MP3Importer
    files.each { |file| Song.new(file) }
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
    
  end
end
