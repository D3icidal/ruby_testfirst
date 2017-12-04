class Temperature
  
  def initialize (options = {})
    # @options = options
    @fahrenheit = options[:f]
    @celsius = options[:c]
  end
  
  def in_fahrenheit
    #if @fahrenheit exists, return itself, otherwise convert to celsius.
    @fahrenheit ? @fahrenheit : ftoc()
      # if @fahrenheit 
      #     return @fahrenheit
      # end
      # if @celsius 
      #     return ((@celsius * 1.8) + 32).round(1)
      # end
  end

  def in_celsius
    @celsius ? @celsius : ctof()
      # if @fahrenheit 
      #     return  ((@fahrenheit - 32) / (1.8)).round
      # end
      # if @celsius
      #     return @celsius
      # end
  end
  
  def ftoc
    ((@celsius * 1.8) + 32).round(1) 
  end
  
  def ctof
    ((@fahrenheit - 32) / (1.8)).round 
  end
  
  def self.from_celsius (temp)
    Temperature.new ( {c: temp})
  end
  
  def self.from_fahrenheit (temp)
    Temperature.new ( {f: temp})
  end
  
end

class Celsius < Temperature
  
  def initialize (temp)
    @celsius = temp
  end
  
  # def in_celsius
  #   super
  # end
  
  # def in_fahrenheit
  #   super
  # end
  
end
  
  
class Fahrenheit < Temperature
  
  def initialize (temp)
    @fahrenheit = temp
  end
  
  # def in_celsius
  #   super
  # end
  
  # def in_fahrenheit
  #   super
  # end
  
end  
  
  
  

# def method(arg1, options={})
#   @arg1 = arg1
#   @arg2 = options[:arg2]
#   ....
#   @arg15 = options[:arg15]
# end


# class Person

#   def initialize(opts = {})
#     @options = opts
#   end

#   def my_age
#     return @options[:age] if @options.has_key?(:age)
#   end

# end