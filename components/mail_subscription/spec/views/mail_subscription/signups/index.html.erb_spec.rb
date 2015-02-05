require 'rails_helper'

RSpec.describe "signups/index", :type => :view do
  before(:each) do
    assign(:signups, [
      Signup.create!(
        :email => "Email"
      ),
      Signup.create!(
        :email => "Email"
      )
    ])
  end

  it "renders a list of signups" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
