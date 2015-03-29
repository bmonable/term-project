require 'spec_helper'

RSpec.describe "proctors/index", :type => :view do
  before(:each) do
    assign(:proctors, [
      Proctor.create!(
        :pname => "Pname",
        :pors => "Pors",
        :tel => "Tel",
        :email => "Email"
      ),
      Proctor.create!(
        :pname => "Pname",
        :pors => "Pors",
        :tel => "Tel",
        :email => "Email"
      )
    ])
  end

  it "renders a list of proctors" do
    render
    assert_select "tr>td", :text => "Pname".to_s, :count => 2
    assert_select "tr>td", :text => "Pors".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
