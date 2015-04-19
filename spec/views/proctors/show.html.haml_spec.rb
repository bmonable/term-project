require 'spec_helper'

RSpec.describe "proctors/show", :type => :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :name => "Name",
      :position => "Position",
      :tel => "Tel",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Email/)
  end
end
