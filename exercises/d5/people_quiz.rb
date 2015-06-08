class Person
  def initialize(name)
    @name = name # Line 3
  end
end

class Engineer < Person
  def initialize(name, field)
    @name = name
    @field = field
  end

  def go_to_work
    puts "Going to work as an engineer in #{field}..."
  end
end

elon_musk = Engineer.new('Elon Musk', 'space travel')