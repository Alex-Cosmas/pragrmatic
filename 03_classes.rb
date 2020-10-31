


# Classes & Objects

def say_hello (name,health=100)
  "I,m #{name.capitalize} with a health of #{health}. "
end 
puts say_hello("larry",60)


class Movie 
  def initialize(title, rank=0)
    @title = title.capitalize
    @movierank = rank 
    # puts "created a movie obect with #{title} and #{rank}"
  end

  def listing
    "#{@title} has a rank of #{@movierank}"
  end

end 

movie1 = Movie.new("goonies", 4)
puts movie1.listing

movie2 = Movie.new("hellboy", 2)
puts movie2.listing

movie3 = Movie.new("goldrush")
puts movie3.listing




class Movie 
  def initialize(title, rank=0)
    @title = title.capitalize
    @movierank = rank 
    # puts "created a movie obect with #{title} and #{rank}"
  end

  def to_s
    "#{@title} has a rank of #{@movierank}"
  end

end 

movie1 = Movie.new("goonies", 4)
puts movie1

movie2 = Movie.new("hellboy", 2)
puts movie2

movie3 = Movie.new("goldrush")
puts movie3



# Adding behaviour
class Movie 
  def initialize(title, rank=0)
    @title = title.capitalize
    @movierank = rank 
    # puts "created a movie obect with #{title} and #{rank}"
  end

  def thumbs_up 
    @movierank += 1
  end

  def thumbs_down 
    @movierank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@movierank}"
  end

end 

movie1 = Movie.new("goonies", 4)
movie1.thumbs_up
puts movie1

movie2 = Movie.new("hellboy", 2)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("goldrush")
movie1.thumbs_up
puts movie3


