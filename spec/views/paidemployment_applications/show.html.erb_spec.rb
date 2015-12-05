require 'rails_helper'

RSpec.describe "paidemployment_applications/show", type: :view do
  before(:each) do
    @paidemployment_application = assign(:paidemployment_application, PaidemploymentApplication.create!(
      :applicant_id => 1,
      :job_id => 2,
      :application_id => 3,
      :referral_source => "MyText",
      :preferred_contact => "MyText",
      :desired_salary => 4,
      :transportation => false,
      :over_eighteen => false,
      :work_proof => false,
      :controlledsubstance_test => false,
      :a1 => "MyText",
      :a2 => "MyText",
      :a3 => "MyText",
      :a4 => "MyText",
      :a5 => "MyText",
      :a6 => "MyText",
      :a7 => "MyText",
      :a8 => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
