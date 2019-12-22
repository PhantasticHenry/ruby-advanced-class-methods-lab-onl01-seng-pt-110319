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
    song = self.new 
    @@all << song 
    song 
  end
  
  def self.new_by_name(title)
    song = self.create
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = self.create 
    song.name = title 
    song
  end
  
  def self.find_by_name(title)
    result = self.all.detect {|song| song.name == title}
    result
  end
  
  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else 
      self.create_by_name(title)
    end
  end
  
  def self.alphabetical
    sorted_songs = self.all.sort_by {|song| song.name}
    sorted_songs
  end
  
  def self.new_from_filename(title)
      song = self.new
      title = title.split(" - ")
      song.name = title[1].chomp(".mp3")
      song.artist_name = title[0]
      song
  end
  
  def self.create_from_filename(title)
    song = self.create
    title = title.split(" - ")
    song.name = title[1].chomp(".mp3")
    song.artist_name = title[0]
    song
  end
  
  def self.destroy_all
    self.all.clear
  end 

end 
























  

