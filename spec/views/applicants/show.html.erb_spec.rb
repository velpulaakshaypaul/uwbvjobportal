require 'rails_helper'

RSpec.describe "applicants/show", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
  end
end
