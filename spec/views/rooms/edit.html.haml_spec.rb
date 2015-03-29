require 'spec_helper'

RSpec.describe "rooms/edit", :type => :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :rnumber => "MyString",
      :build => "MyString",
      :rdate => "MyString",
      :rtime => "MyString",
      :proc1 => "MyString",
      :proc2 => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_rnumber[name=?]", "room[rnumber]"

      assert_select "input#room_build[name=?]", "room[build]"

      assert_select "input#room_rdate[name=?]", "room[rdate]"

      assert_select "input#room_rtime[name=?]", "room[rtime]"

      assert_select "input#room_proc1[name=?]", "room[proc1]"

      assert_select "input#room_proc2[name=?]", "room[proc2]"
    end
  end
end
