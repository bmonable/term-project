require 'spec_helper'

RSpec.describe "rooms/index", :type => :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :rnumber => "Rnumber",
        :build => "Build",
        :rdate => "Rdate",
        :rtime => "Rtime",
        :proc1 => "Proc1",
        :proc2 => "Proc2"
      ),
      Room.create!(
        :rnumber => "Rnumber",
        :build => "Build",
        :rdate => "Rdate",
        :rtime => "Rtime",
        :proc1 => "Proc1",
        :proc2 => "Proc2"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Rnumber".to_s, :count => 2
    assert_select "tr>td", :text => "Build".to_s, :count => 2
    assert_select "tr>td", :text => "Rdate".to_s, :count => 2
    assert_select "tr>td", :text => "Rtime".to_s, :count => 2
    assert_select "tr>td", :text => "Proc1".to_s, :count => 2
    assert_select "tr>td", :text => "Proc2".to_s, :count => 2
  end
end
