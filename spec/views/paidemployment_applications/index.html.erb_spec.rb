require 'rails_helper'

RSpec.describe "paidemployment_applications/index", type: :view do
  before(:each) do
    assign(:paidemployment_applications, [
      PaidemploymentApplication.create!(
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
      ),
      PaidemploymentApplication.create!(
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
      )
    ])
  end

  it "renders a list of paidemployment_applications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
