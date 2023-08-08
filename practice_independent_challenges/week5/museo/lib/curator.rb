class Curator
  attr_reader :photographs,
              :artists
              
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  # def artist_photograph_list
  #   list = Hash.new([])
  #   @artists.find_all do |artist|
  #     @photographs.find_all do |photo|
  #       if photo.artist_id == artist.id
  #         list[artist] => list[artist] << photo
  #         require 'pry';binding.pry
  #       end
  #     end
  #   end
  # end

  def artists_more_than_one_photo
    artist_list = []
    photograph_count = Hash.new(0)

    @artists.map do |artist|
      
    end
  end
end