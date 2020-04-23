require 'pry'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/paramable.rb'


class Artist
  attr_accessor :name
  attr_reader :songs

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  @@artists = []

  def initialize
    super
    @songs = []
  end


  def add_song(song)
    if song.is_a? Array
      @songs += song
      song.each {|s| s.artist = self}
    else
      @songs << song
      song.artist = self
    end
  end

  def self.all
    @@artists
  end
end
