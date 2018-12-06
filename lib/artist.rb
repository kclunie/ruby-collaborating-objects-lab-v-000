class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
end

  def add_song(song)
    #Artist = Song.new(song)
    @songs << song
  end
  
  def save
    @@all << artist 
  end
  
  def self.find_or_create_by_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def print_songs
    @songs 
  end
  
end