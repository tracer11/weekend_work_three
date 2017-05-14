# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation = HotelReservation.new(
                                  customer_name: "Karol Gurba",
                                  date: "05-16-17",
                                  room_number: 420,)

reservation.room_number = 400

if reservation.room_number == 400
  puts "Pass!"
else
  puts "Fail!"
end

reservation.add_a_fridge
if reservation.amenities == ["fridge"]
  puts "Pass!"
else
  puts "Fail!"
end

reservation.add_a_crib
if reservation.amenities == ["fridge", "crib"]
  puts "Pass!"
else
  puts "Fail!"
end

reservation.add_a_custom_amenity("bar")
if reservation.amenities == ["fridge", "crib", "bar"]
  puts "Pass!"
else
  puts "Fail!"
end