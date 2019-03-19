class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist_instance, gallery_instance)
    @title = title
    @price = price
    @artist = artist_instance
    @gallery = gallery_instance
    @@all << self
  end

  def self.all
    @@all
  end


end


#
#   * `Painting.total_price`
#     * Returns an `integer` that is the total price of all paintings
