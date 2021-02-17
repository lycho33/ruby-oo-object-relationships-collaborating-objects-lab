require 'pry'
class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir.children(@path).each {|e| File.file?(e)}
        #binding.pry
    end

    def import
        files.each{ |filename| Song.new_by_filename(filename) }
      end
    
end