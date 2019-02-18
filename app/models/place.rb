class Place
  attr_reader :name,
              :image_url,
              :is_closed,
              :url,
              :review_count,
              :rating,
              :coordinates,
              :location,
              :display_phone,
              :distance

  def initialize(attributes)
    @name = attributes[:name]
    @image_url = attributes[:image_url]
    @is_closed = attributes[:is_closed]
    @url = attributes[:url]
    @review_count = attributes[:review_count]
    @rating = attributes[:rating]
    @coordinates = attributes[:coordinates]
    @location = attributes[:location]
    @display_phone = attributes[:display_phone]
    @distance = attributes[:distance]
  end

  def display_address
    location[:display_address].join(" ")
  end

  def popup_html
    "<p><b>#{name}</b></p><b>Address:</b> #{display_address}</p><p><a href='#{url}'>View on Yelp</a></p>"
  end
end
