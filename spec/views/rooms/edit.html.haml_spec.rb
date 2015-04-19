require 'spec_helper'

RSpec.describe "rooms/edit", :type => :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :number => "MyString",
      :build => "MyString",
      :date => "MyString",
      :time => "MyString",
      :proctor1 => "MyString",
      :proctor2 => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_number[name=?]", "room[number]"

      assert_select "input#room_build[name=?]", "room[build]"

      assert_select "input#room_date[name=?]", "room[date]"

      assert_select "input#room_time[name=?]", "room[time]"

      assert_select "input#room_proctor1[name=?]", "room[proctor1]"

      assert_select "input#room_proctor2[name=?]", "room[proctor2]"
    end
  end
end
