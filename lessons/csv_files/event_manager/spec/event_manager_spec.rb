require './lib/attendee'
require "./lib/event_manager"
require "csv"

RSpec.describe EventManager do
  it "exists" do
    event_manager = EventManager.new
    
    expect(event_manager).to be_a EventManager
  end
  
  it "has array of attendees" do
    event_manager = EventManager.new
    
    expect(event_manager.attendees).to eq []
  end
  
  it "adds attendees" do
    event_manager = EventManager.new

    event_manager.create_attendees
    
    expect(event_manager.attendees[0].id).to eq "1"
    expect(event_manager.attendees[0].name).to eq "Allison Nguyen"
    expect(event_manager.attendees[0].zipcode).to eq "20010"
  end
  
  it "displays attendees" do
    event_manager = EventManager.new
  
    event_manager.create_attendees

    expect(event_manager.display).to be_a Array
  end
end