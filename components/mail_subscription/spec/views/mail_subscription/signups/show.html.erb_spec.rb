require 'rails_helper'

RSpec.describe "signups/show", :type => :view do
  before(:each) do
    @signup = assign(:signup, Signup.create!(
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
  end
end
