
class Playlist 
  def initialize(name)
    @name = name 
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end 

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end 
  end
end

movie1 = Movie.new("gonnies", 10)
movie2 = Movie.new("ghostbuster", 8)
movie3 = Movie.new("goldfinger")

playlist_1 = Playlist.new("Tims")
playlist_1.add_movie(movie1)
playlist_1.add_movie(movie2)
playlist_1.add_movie(movie3)

playlist_1.play

playlist_2 = Playlist.new("Alex's")
playlist_2.add_movie(movie3)

# Add new movie to list
movie4 = Movie.new("MIB", 20)
playlist_2.add_movie(movie4)

playlist_2.play