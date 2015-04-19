require 'spec_helper'

RSpec.describe "proctors/edit", :type => :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :name => "MyString",
      :position => "MyString",
      :tel => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit proctor form" do
    render

    assert_select "form[action=?][method=?]", proctor_path(@proctor), "post" do

      assert_select "input#proctor_name[name=?]", "proctor[name]"

      assert_select "input#proctor_position[name=?]", "proctor[position]"

      assert_select "input#proctor_tel[name=?]", "proctor[tel]"

      assert_select "input#proctor_email[name=?]", "proctor[email]"
    end
  end
end
