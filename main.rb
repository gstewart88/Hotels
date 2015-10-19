require 'pry-byebug'

require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'guest'
require_relative 'methods'


# chain = Chain.new name: "Poor Hotels" 
hotel = Hotel.new name: "CodeClan Hotel"

hotel.add_guest(Guest.new(name: 'Fred'))
hotel.add_guest(Guest.new(name: 'Wilma'))
hotel.add_guest(Guest.new(name: 'Barney'))
hotel.add_guest(Guest.new(name: 'Betty'))
hotel.add_room(Room.new(title: "Double"))
hotel.add_room(Room.new(title: "Single"))

response = menu

  while response != 0

    case response
    when 1
      check_in(hotel)
    when 2
      check_out(hotel)
    when 3
      list_rooms(hotel)
    when 4
      list_guests(hotel)
    when 5
      create_room(hotel)
    when 6
      create_guest(hotel)
    when 7
      list_moved_in(hotel)
    # when 8
    #   list_hotels(chain)
    else
      puts "invalid option"
    end

    puts "Press enter to continue"
    gets

    response = menu
  end