# Adding behaviour
class Movie 

  attr_reader :rank
  attr_accessor :title

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
puts movie1.title

movie1.title = "Alex"
puts movie1.title

