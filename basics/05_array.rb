seats = ["alex", "brian", "charles"]

puts seats

puts seats[0]

seats << "Tim"
puts seats

# short form 
seats = %w(edd mumbo gary)
puts seats


employees = []

employees[0] = "Sam"
employees[1] = "David"
employees[2] = "Noah"
employees[3] = "Yvonne"

employees.push("Miriam")
employees.push("Jeff")
employees.push("Paul")
employees.push("Paula")

employees.size
employees.pop


puts employees



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

movie1 = Movie.new("gonnies", 10)
movie2 = Movie.new("ghostbuster", 10)
movie3 = Movie.new("goldfinger")

movies = [movie1, movie2, movie3]

puts movies

movies.each do |mv|
  mv.thumbs_up 
  puts mv
end