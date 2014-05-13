Song = Struct.new(:title, :name, :length)

File.open("songdata.txt") do |song_file|
  songs = []

  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs << Song.new(title, name, mins.to_i * 60 + secs.to_i)
  end

  puts songs[1]
end

##############################################################################
# <===================OUTPUT===================>                             #
# c:/ttmp/ruby_in_action/pickaxe/tut_stdtypes >>> ruby read_songdata_3.rb    #
# #<struct Song title="Wonderful World", name="Louis Armstrong", length=178> #
##############################################################################
