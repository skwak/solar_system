class SolarSystem
  attr_accessor :planets, :form_date

  def initialize
    @planets = []
    @form_date = 4600000000
  end

  def so_many_planets(planets)
    planets.each do |hash|
      @planets << Planet.new(hash)
    end
  end

  def p_names
    @planets.each do |planet|
      puts planet.name
    end
  end
end

class Planet
  attr_accessor :name, :orbit, :moons, :rotation

  def initialize(planet)
    @name = planet[:name]
    @orbit = planet[:orbit]
    @moons = planet[:moons]
    @rotation = planet[:rotation]
  end
end

#this is an array of hashes
planets = [
  { name: "Mercury",
    orbit: 88,
    moons: 0,
    rotation: 176.0},
  { name: "Venus",
    orbit: 225,
    moons: 0,
    rotation: 243.0},
  { name: "Earth",
    orbit: 365,
    moons: 1,
    rotation: 1.0},
  { name: "Mars",
    orbit: 687,
    moons: 2,
    rotation: 1.0},
  { name: "Jupiter",
    orbit: 4380,
    moons: 67,
    rotation: 0.4},
  { name: "Saturn",
    orbit: 10585,
    moons: 62,
    rotation: 0.4},
  { name: "Uranus",
    orbit: 30660,
    moons: 27,
    rotation: 0.7},
  { name: "Neptune",
    orbit: 60225,
    moons: 13,
    rotation: 0.7}
    ]

# test1:
# planets.each do |a|
#   glob = Planet.new(a)
#   puts "The planet #{glob.name} has an orbit of #{glob.orbit} days, has #{glob.moons} moon(s), and rotates every #{glob.rotation} day(s)."
# end

# ss.planets.push(planets)
# ss.planets.so_many_planets(planets)
# puts ss.planets
# ss.form_date.push(4600000000)


#test2:
# ss = SolarSystem.new
# ss.so_many_planets(planets)
#
# puts "You, space explorer. Me, Master of the Universe.
# You can't actually go anywhere. But I can give you some data.
# What planet do you want to learn about today?"
#
# puts ss.p_names
#
# @name = gets.chomp.capitalize
