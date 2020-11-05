
# The Odin Project Deeper Learning  https://www.theodinproject.com/courses/ruby-programming/lessons/basic-enumerable-methods

# Exclude Mo from the list 

family_members = ["Ben", "Sam", "Jennifer", "Tim", "Grace", "Mo"]
invited = []

for family in family_members do 
  if family != 'Mo'
    invited.push(family)
  end
end

puts invited

# https://www.codementor.io/ruby-on-rails/tutorial/rubys-swiss-army-knife-the-enumerable-module

# Before we dive into what those tools are, let’s step back a little bit. Enumerable is one of Ruby’s modules. In Ruby, a module is a collection of methods, classes and/or constants inside a particular namespace. A namespace is a unique environment or naming scheme that prevents collisions in behavior. For example, I can have two methods called #each in my program, and use them at the same time, as long as they are in a different namespace.

# The Enumerable module can be mixed into any class that creates objects that may need to be compared, sorted, examined, or categorized. If you’ve worked with Arrays or Hashes in Ruby, you may have already performed these kinds of operations on them, iterating over them with #each or sorting array items with #sort. Enumerable allows you to quickly implement these kinds of behaviors in your own classes.

# Before we dive into creating a class that utilizes Enumerable, let’s take a look at five Enumerable methods that will give you some idea of the power of this module. The following five methods (which I sometimes call “The Ects”) are critical for writing idiomatic Ruby code. They are #collect, #select, #reject, #detect, and #inject. They can solve problems in one line that would otherwise require writing more complex conditional logic from scratch. A deep knowledge of each of these methods will make you a much better Ruby programmer.


# Each 
names = ['Lee', 'Tania', 'Louis']
for name in names
  puts name
end


# Before we dive into creating a class that utilizes Enumerable, let’s take a look at five Enumerable methods that will give you some idea of the power of this module. The following five methods (which I sometimes call “The Ects”) are critical for writing idiomatic Ruby code. They are 
#collect, 
#select, 
#reject, 
#detect, and 
#inject. They can solve problems in one line that would otherwise require writing more complex conditional logic from scratch. A deep knowledge of each of these methods will make you a much better Ruby programmer.


# Each Method
names = ['Lee', 'Tania', 'Louis']
for name in names
  puts name
end


puts "----"

# Alternative 
names = ['Lee', 'Tania', 'Louis']
names.each do |name|
  puts name
end 

puts "----"
# Simpler 
names = ['Lee', 'Tania', 'Louis']
names.each { |name| puts name } 

puts "----"
# While some programmers feel Ruby’s #each syntax is more readable than a for loop, it’s not necessarily less verbose. Even so, using #each is the most common way for Rubyists to handle iteration. Many people learning Ruby will stop here. Having learned #each, they’ll add conditional logic to #each blocks to perform tasks that “The Ects” are built to handle. If your code is littered with usage of the #each method, you will probably benefit from learning about some of the other methods in Enumerable.

#collect method
# Also known by another name you may be familiar with — #map — 
#collect allows you to loop over objects and add the return value of each loop to an array

names = ['Alex', 'Cosmas', 'Otieno']
uppercase_names = []

names.each do |names|
  uppercase_names << names.upcase 
end 
puts uppercase_names 

puts "---- "
puts "Using collect ---- "
names = ['Lee', 'Tania', 'Louis']
uppercase_names = names.collect { |name| name.upcase }
puts uppercase_names   


puts "---- "

#select method
#select method allows you loop over a collection and return a list of objects for which a particular expression returns true. In other words, take a collection of objects and ‘select’ those that meet a certain criteria, discarding the rest. Here’s a more verbose example, using German Cars 
# You can see that any object passed into the block that is evaluated as part of a true/false expression and returns true will be added to an array.

car_models = ['BMW', "Toyota", "Hino", "Ferrari", "Ford", "Fiat", "LandRover"]
german = []

car_models.each do |model|
 if model == "BMW"
  german << model
 end 
end 

puts german


puts "---- "
#reject method
#reject method is very similar to #select, but the inverse. It will leave behind any objects for which the expression returns true, and add only those that return false to the resulting array.

cockles_and_mussels = ['alive', 'dead', 'dead', 'alive', 'alive', 'dead']

alive_alive_oh = cockles_and_mussels.reject do |cockle_or_mussel|
  cockle_or_mussel == 'dead'
end

puts alive_alive_oh 
#=> ['alive', 'alive', 'alive']

puts "---- "
car_models = [
  { model: 'BMW', country: 'German', is_german: true },
  { model: 'Toyota', country: 'Japan', is_german: false },
  { model: 'Hino', country: 'China', is_german: false },
  { model: 'Ferrari', country: 'Italy', is_german: false },
  { model: 'Fiat', country: 'France', is_german: false },
  { model: 'LandRover', country: 'UK', is_german: false }
]

other_cars = car_models.reject { |model| model[:is_german] }

puts other_cars


puts "---- "

# Choosing between #select and #reject is often a matter of style. Both can be used to solve similar problems effectively.

# Detect Method
# The #detect method (also implemented as #find) is similar to #select, but instead of returning a collection of objects that match the given criteria, it will “detect” the first matching element it finds and return only that object.

songs = [
  { title: 'Mad World', artist: 'Gary Jules', is_sad: true },
  { title: 'California Gurls', artist: 'Katy Perry', is_sad: false },
  { title: 'Needle in the Hay', artist: 'Elliott Smith', is_sad: true },
  { title: 'Happy', artist: 'Pharrell Williams', is_sad: false }
]

sad_song_to_play_now = songs.detect { |song| song[:is_sad] }

puts sad_song_to_play_now 



