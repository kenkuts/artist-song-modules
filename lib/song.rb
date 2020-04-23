require 'pry'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/paramable.rb'


class Song
  attr_accessor :name, :artist

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  @@songs = []

  def self.all
    @@songs
  end

end
