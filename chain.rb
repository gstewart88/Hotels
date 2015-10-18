class Chain
  attr_reader :name, :hotels

  def initialize(options={})
    @name = options[:name]
    @hotels = {}
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
    

end