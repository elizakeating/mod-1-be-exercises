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

  def artist_photograph_list
    list = Hash.new([])
    
    @artists.each do |artist|
      artist_photos = []
      @photographs.each do |photo|
        if photo.artist_id == artist.id
          artist_photos << photo
        end
      end

      list[artist] = artist_photos
    end

    list
  end

  def artists_more_than_one_photo
    photograph_count = Hash.new(0)
    artist_list = []

    @artists.each do |artist|
      photographs.each do |photo|
        if photo.artist_id == artist.id
          photograph_count[artist.name] += 1
        end
      end
    end
    
    photograph_count.each do |artist, photo_count|
      if photo_count > 1
        artist_list << artist
      end
    end

    artist_list
  end

  def country_photographs(country)
    photos_from_country = []

    artist_from_country = @artists.find_all do |artist|
      artist.country == country
    end

    artist_from_country.each do |artist|
      @photographs.each do |photo|
        if photo.artist_id == artist.id
          photos_from_country << photo
        end
      end
    end

    photos_from_country
  end
end