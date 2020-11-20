require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select{|song| song[-1] == "3"}
  end

  def import
    files.length.times do |i|
      Song.new_by_filename(files[i])
    end
  end
end