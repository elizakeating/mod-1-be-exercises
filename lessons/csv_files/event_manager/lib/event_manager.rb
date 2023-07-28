class EventManager
  attr_reader :attendees

  def initialize
    @contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
    @attendees = []
  end

  def create_attendees
    @contents.each do |row|
      id = row[:id]
      first_name = row[:first_name]
      last_name = row[:last_name]
      zipcode = row[:zipcode]

      @attendees << Attendee.new(id, first_name, last_name, zipcode)
    end
  end

  def display
    @attendees.each do |attendee|
      puts attendee.display
    end
  end
end