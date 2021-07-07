require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
  super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self #creates an artist instance with that song
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
