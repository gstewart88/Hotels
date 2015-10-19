class Hotel
  attr_reader :name, :rooms, :guests

  def initialize(options={})
    @name = options[:name]
    @rooms = {}
    @guests= {}
  end

  def list_hotels
    if hotels.empty?
      "No hotels here my sweet prince"
    else
      hotels.map { |key, hotel| hotel.pretty_string }.join("\n")
    end   
  end

  def add_hotel(hotel)
    hotels[hotel.name] = hotel
  end

  def add_guest(guest)
    guests[guest.name] = guest
  end

  def check_in(guest_name, room_title)
    guest = guests[guest_name]
    room = rooms.delete(room_title)
    guest.move_in(room)
  end

  def pretty_string
    "#{name}"
  end

  def add_room(room)
    rooms[room.title] = room
  end

  def add_guest(guest)
    guests[guest.name] = guest
  end

  def list_moved_in
    guests.reduce('') do |memo, (key, guest)|
      if guest.rooms.any?
        memo += ("#{guest.name} is staying in a #{guest.list_rooms} room")
      end
      memo
    end.tap { |s| s.replace("No one is staying in this terrible hotel") if s.empty? }
  end

  def list_rooms
    if rooms.empty?
      "No rooms here my sweet prince"
    else
      rooms.map { |key, room| room.pretty_string }.join("\n")
    end   
  end

  def move_out(guest_name, room_title)
    guest = guests[guest_name]
    room = guest.move_out(room_title)
    add_room(room)
  end

  def list_guests
    if guests.empty?
      "No guests here you giblet"
    else
        
      guests.map { |key, guest| guest.pretty_string }.join("\n")
    end
  end


end