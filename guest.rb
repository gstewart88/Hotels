class Guest

  attr_reader :name, :rooms

  def initialize(options={})
    @name =options[:name]
    @rooms = {}
  end

  def pretty_string
    "#{name}"
  end

  def move_in(room)
    rooms[room.title] = room
  end

  def list_rooms
    if rooms.empty?
      "We are fully booked...somehow"
    else
      rooms.map { |key, room| room.pretty_string }.join("\n")
    end   
  end

  def move_out(room_title)
    rooms.delete(room_title)
  end

end