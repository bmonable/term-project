require 'spec_helper'

RSpec.describe "proctors/index", :type => :view do
  before(:each) do
    assign(:proctors, [
      Proctor.create!(
        :name => "Name",
        :position => "Position",
        :tel => "Tel",
        :email => "Email"
      ),
      Proctor.create!(
        :name => "Name",
        :position => "Position",
        :tel => "Tel",
        :email => "Email"
      )
    ])
  end

  it "renders a list of proctors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
