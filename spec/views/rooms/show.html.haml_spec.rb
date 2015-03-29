require 'spec_helper'

RSpec.describe "rooms/show", :type => :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :rnumber => "Rnumber",
      :build => "Build",
      :rdate => "Rdate",
      :rtime => "Rtime",
      :proc1 => "Proc1",
      :proc2 => "Proc2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rnumber/)
    expect(rendered).to match(/Build/)
    expect(rendered).to match(/Rdate/)
    expect(rendered).to match(/Rtime/)
    expect(rendered).to match(/Proc1/)
    expect(rendered).to match(/Proc2/)
  end
end
