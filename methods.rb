def menu
  puts `clear`
  puts "*** Poor Hotels - Our hotels are just the worst ***"
  puts
  puts
  puts "1. Check In"
  puts "2. Check Out"
  puts "3. Lists all Rooms"
  puts "4. List all Guests"
  puts "5. Create Room"
  puts "6. Create Guest"
  puts "7. Occupancy Report"
  puts "8. List Hotels"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i

end

def list_moved_in(hotel)
  puts hotel.list_moved_in
end

def list_guests(hotel)
  puts hotel.list_guests
end

def list_rooms(hotel)
  puts hotel.list_rooms
end

def list_hotels(chain)
  puts chain.list_hotels
end

def create_room(hotel)
  print "Type: "
  title = gets.chomp
  print "Room Type: "
  room_type = gets.chomp
  room = Room.new(title: title)

  hotel.add_room(room)

end

def create_guest(hotel)
  print "Name: "
  name = gets.chomp

  guest = guest.new(name: name)

  hotel.add_guest(guest)

end

def check_in(hotel)

  print "Which guest is going to check in (by name): "
  guest_name = gets.chomp
  puts
  puts hotel.list_rooms
  puts

  print "Choose from available room types (by name): "
  room_title = gets.chomp

  hotel.check_in(guest_name, room_title)
end


def check_out(hotel)

  print "Which guest is going to check out (by name): "
  guest_name = gets.chomp
  guest = hotel.guests[guest_name]

  room_title = guest.list_rooms

  hotel.move_out(guest_name, room_title)
end