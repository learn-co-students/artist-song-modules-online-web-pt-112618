require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  def self.all
    @@songs
  end

  def artist=(artist) #wHAT IS THIS??? SETTER??? It calls an Artist object with the song associated to it??
    @artist = artist
  end

end
