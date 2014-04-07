class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
end


song = Song.new("Bicylops", "Fleck", 260)
puts song.inspect
puts song.to_s

class Song
  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end

song = Song.new("Bicylops", "Fleck", 260)
puts "----------------"
puts song.to_s


class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
    super + "[#@lyrics]"
  end
end

song = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the ...")
puts song.to_s

class Song
  # :artist is an expression that return a Symbol object_id
  # corresponding to artist
  # Java's getter
  attr_reader :name, :artist, :duration
end
song = Song.new("Bicylops", "Fleck", 260)
puts song.artist
puts song.name
puts song.duration

class Song
  attr_writer :duration
end

song = Song.new("Bicylops", "Fleck", 260)
song.duration = 257
puts song

# In order to tell apart from internal variable, we use
# attribute method here

class Song
  def duration_in_minutes
    @duration / 60.0
  end
  def duration_in_minutes=(new_duration)
    @duration = (new_duration * 60).to_i
  end
end

song = Song.new("Bicylops", "Fleck", 260)
puts song.duration_in_minutes
song.duration_in_minutes = 4.2
puts song.duration

class Song
  @@plays = 0
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def play
    @plays += 1
    @@plays += 1
    "This song: #@plays plays. Total #@@plays plays"
  end
end

s1 = Song.new("Song1", "Artist1", 234)
s2 = Song.new("Song2", "Artist2", 345)
puts s1.play
puts s2.play
puts s1.play
puts s1.play
