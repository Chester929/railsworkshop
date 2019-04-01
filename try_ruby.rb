# Print vs Puts

print 'Hello World' #=> nil
puts 'Hello World' #=> nil

# Module with helper methods
#
# module Helper
#   def print_text(text)
#     puts text
#   end
# end

# Struct example
#
# Person = Struct.new(:name, :surname, :years) do
#   def full_text
#     "#{name} #{surname} -> #{years}"
#   end
# end

# Everything is a object

class Person

  # Include vs Extend
  # include Helper
  # extend Helper

  # accessors
  # attr_accessor :name
  # attr_reader :surname
  # attr_writer :years

  def initialize(name, surname, years)
    # raise "Name can not be empty!" if name.to_s.strip.empty?
    @name = name
    @surname = surname
    @years = years
  # rescue => e
  #   puts e.message
  end

  def full_text
    "#@name #{self.surname} -> #{@years}"
  end

end

class Father < Person

  def initialize(name, surname, years, profession)
    @profession = profession
    super.new(name, surname, years)
  end

  # Overloading
  #
  # def full_text
  #   "#@name #{self.surname} -> #{@years} with profesion: #{@profession}"
  # end
  #
  # or we can use super method
  #
  # def full_text
  #   super + " with profesion: #{@profession}"
  # end
  #

  def get_profession
    @profession
  end
end

# New object of Father klass
father = Father.new('Miroslav', 'Mudrik', 26, 'Developer')

# Everything is object
#
5.class
5.78.class

5.methods

5.times { puts 'A' }
5.times { |index| puts index }