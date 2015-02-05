require 'rails_helper'

RSpec.describe "signups/edit", :type => :view do
  before(:each) do
    @signup = assign(:signup, Signup.create!(
      :email => "MyString"
    ))
  end

  it "renders the edit signup form" do
    render

    assert_select "form[action=?][method=?]", signup_path(@signup), "post" do

      assert_select "input#signup_email[name=?]", "signup[email]"
    end
  end
end
