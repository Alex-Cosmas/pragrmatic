def movie_listing(title)
  "Movie: #{title.capitalize}"
end
puts movie_listing("loonies")



def movie_listing(title, rank=0)
  "#{title.capitalize} has a rank of #{rank}"
end
puts movie_listing("loonies" , 10 )
puts movie_listing("loonies" , 10 )

newMovie = "Godfather"
puts movie_listing(newMovie)

# display day of the week methods
def weekday 
  current_time = Time.new
  current_time.strftime("%A")
end

# display movie listing method
def movie_listing(title, rank=0)
  "#{title.capitalize} has a review of #{rank} /5 as of #{weekday}"
end

puts movie_listing("loonies" , 10 )
puts movie_listing("loonies" , 10 )

newMovie = "Godfather"
puts movie_listing(newMovie)
