require 'rails_helper'

RSpec.describe "applicants/index", type: :view do
  before(:each) do
    assign(:applicants, [
      Applicant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :contact => "Contact",
        :gpa => "9.99",
        :credit_hours => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      ),
      Applicant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :contact => "Contact",
        :gpa => "9.99",
        :credit_hours => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of applicants" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
