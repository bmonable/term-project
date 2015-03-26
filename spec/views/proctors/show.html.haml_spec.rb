require 'rails_helper'

RSpec.describe "proctors/show", :type => :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :pname => "Pname",
      :pors => "Pors",
      :tel => "Tel",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pname/)
    expect(rendered).to match(/Pors/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Email/)
  end
end
