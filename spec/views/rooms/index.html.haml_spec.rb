require 'spec_helper'

RSpec.describe "rooms/index", :type => :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :number => "Number",
        :build => "Build",
        :date => "Date",
        :time => "Time",
        :proctor1 => "Proctor1",
        :proctor2 => "Proctor2"
      ),
      Room.create!(
        :number => "Number",
        :build => "Build",
        :date => "Date",
        :time => "Time",
        :proctor1 => "Proctor1",
        :proctor2 => "Proctor2"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Build".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Proctor1".to_s, :count => 2
    assert_select "tr>td", :text => "Proctor2".to_s, :count => 2
  end
end
