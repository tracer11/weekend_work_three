# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote
  def initialize(tv)
    @tv = tv[:tv_num]
  end

  def toggle_power
    if @power == "off"
      @power = "on"
    elsif @power == "on"
      @power = "off"
    end
  end
     
  def increment_volume
    @volume += 1   
  end 

  def decrement_volume
    @volume -= 1
  end

  def set_channel(channel)
    @channel = channel
  end
end

class Tv < Remote
  attr_reader :power, :volume, :channel
  def initialize(attribute)
    @power = attribute[:power]
    @volume = attribute[:volume]
    @channel = attribute[:channel]
  end
end

tv_1 = Tv.new(
              power: "off",
              volume: 0,
              channel: 1)

tv_1.toggle_power

if tv_1.power == "on"
  puts "pass!"
else
  puts "fail!"
end

tv_1.increment_volume
if tv_1.volume == 1
  puts 'pass!'
else
  puts "fail!"
end

tv_1.decrement_volume
if tv_1.volume == 0
  puts "pass!"
else
  puts "Fail!"
end

tv_1.set_channel(5)
if tv_1.channel == 5
  puts "pass!"
else
  puts "fail!"
end
