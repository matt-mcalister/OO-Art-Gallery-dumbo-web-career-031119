class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  #   * `Artist.most_prolific`
  #     * Returns an `instance` of the artist with the highest
  # amount of paintings per year of experience.
  #
  def prolificness
    # prolificness = num_paintings / years_experience
    paintings.size / years_experience.to_f
  end

  def self.most_prolific
    # .each solution
    # max_artist = self.all.first
    # self.all.each do |artist|
    #   if max_artist.prolificness < artist.prolificness
    #     max_artist = artist
    #   end
    # end
    # max_artist

    self.all.max_by do |artist|
      artist.prolificness
    end
    # returns the artist with the highest level of prolificness
  end
end
#   * `Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in
#
#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists
#
