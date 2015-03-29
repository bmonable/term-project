require 'spec_helper'

RSpec.describe "proctors/new", :type => :view do
  before(:each) do
    assign(:proctor, Proctor.new(
      :pname => "MyString",
      :pors => "MyString",
      :tel => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new proctor form" do
    render

    assert_select "form[action=?][method=?]", proctors_path, "post" do

      assert_select "input#proctor_pname[name=?]", "proctor[pname]"

      assert_select "input#proctor_pors[name=?]", "proctor[pors]"

      assert_select "input#proctor_tel[name=?]", "proctor[tel]"

      assert_select "input#proctor_email[name=?]", "proctor[email]"
    end
  end
end
