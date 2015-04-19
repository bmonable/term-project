require 'spec_helper'

RSpec.describe "rooms/show", :type => :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :number => "Number",
      :build => "Build",
      :date => "Date",
      :time => "Time",
      :proctor1 => "Proctor1",
      :proctor2 => "Proctor2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Build/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Proctor1/)
    expect(rendered).to match(/Proctor2/)
  end
end
