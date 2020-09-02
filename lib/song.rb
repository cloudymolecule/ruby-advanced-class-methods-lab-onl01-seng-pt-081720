require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << self.new
    @@all[-1]
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    @@all[-1]
  end

  def self.find_by_name(name)
    @@all.find{|p| p.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    @@all.sort_by { |a| a.name}
  end

  def self.new_from_filename(name)
    res = name.split(" - ")
    res2 = res[0]
    res3 = res[1].split(".")
    res3 = res[0]

    binding.pry
  end

  def self.create_from_filename

  end

  def self.destroy_all
    @@all.clear
  end

end
