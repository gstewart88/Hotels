class Room

  attr_reader :title

  def initialize(options={})
    @title = options[:title]
    # @room_price = options[:room_price]
  end

  def pretty_string
    "#{title}"
  end

end