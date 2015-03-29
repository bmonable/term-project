require 'spec_helper'

RSpec.describe "proctors/edit", :type => :view do
  before(:each) do
    @proctor = assign(:proctor, Proctor.create!(
      :pname => "MyString",
      :pors => "MyString",
      :tel => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit proctor form" do
    render

    assert_select "form[action=?][method=?]", proctor_path(@proctor), "post" do

      assert_select "input#proctor_pname[name=?]", "proctor[pname]"

      assert_select "input#proctor_pors[name=?]", "proctor[pors]"

      assert_select "input#proctor_tel[name=?]", "proctor[tel]"

      assert_select "input#proctor_email[name=?]", "proctor[email]"
    end
  end
end
