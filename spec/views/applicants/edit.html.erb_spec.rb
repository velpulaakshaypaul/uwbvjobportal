require 'rails_helper'

RSpec.describe "applicants/edit", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :contact => "MyString",
      :gpa => "9.99",
      :credit_hours => 1,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit applicant form" do
    render

    assert_select "form[action=?][method=?]", applicant_path(@applicant), "post" do

      assert_select "input#applicant_first_name[name=?]", "applicant[first_name]"

      assert_select "input#applicant_last_name[name=?]", "applicant[last_name]"

      assert_select "input#applicant_email[name=?]", "applicant[email]"

      assert_select "input#applicant_contact[name=?]", "applicant[contact]"

      assert_select "input#applicant_gpa[name=?]", "applicant[gpa]"

      assert_select "input#applicant_credit_hours[name=?]", "applicant[credit_hours]"

      assert_select "input#applicant_address[name=?]", "applicant[address]"

      assert_select "input#applicant_city[name=?]", "applicant[city]"

      assert_select "input#applicant_state[name=?]", "applicant[state]"

      assert_select "input#applicant_zip[name=?]", "applicant[zip]"
    end
  end
end
