require 'rails_helper'

RSpec.describe "paidemployment_applications/edit", type: :view do
  before(:each) do
    @paidemployment_application = assign(:paidemployment_application, PaidemploymentApplication.create!(
      :applicant_id => 1,
      :job_id => 1,
      :application_id => 1,
      :referral_source => "MyText",
      :preferred_contact => "MyText",
      :desired_salary => 1,
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

  it "renders the edit paidemployment_application form" do
    render

    assert_select "form[action=?][method=?]", paidemployment_application_path(@paidemployment_application), "post" do

      assert_select "input#paidemployment_application_applicant_id[name=?]", "paidemployment_application[applicant_id]"

      assert_select "input#paidemployment_application_job_id[name=?]", "paidemployment_application[job_id]"

      assert_select "input#paidemployment_application_application_id[name=?]", "paidemployment_application[application_id]"

      assert_select "textarea#paidemployment_application_referral_source[name=?]", "paidemployment_application[referral_source]"

      assert_select "textarea#paidemployment_application_preferred_contact[name=?]", "paidemployment_application[preferred_contact]"

      assert_select "input#paidemployment_application_desired_salary[name=?]", "paidemployment_application[desired_salary]"

      assert_select "input#paidemployment_application_transportation[name=?]", "paidemployment_application[transportation]"

      assert_select "input#paidemployment_application_over_eighteen[name=?]", "paidemployment_application[over_eighteen]"

      assert_select "input#paidemployment_application_work_proof[name=?]", "paidemployment_application[work_proof]"

      assert_select "input#paidemployment_application_controlledsubstance_test[name=?]", "paidemployment_application[controlledsubstance_test]"

      assert_select "textarea#paidemployment_application_a1[name=?]", "paidemployment_application[a1]"

      assert_select "textarea#paidemployment_application_a2[name=?]", "paidemployment_application[a2]"

      assert_select "textarea#paidemployment_application_a3[name=?]", "paidemployment_application[a3]"

      assert_select "textarea#paidemployment_application_a4[name=?]", "paidemployment_application[a4]"

      assert_select "textarea#paidemployment_application_a5[name=?]", "paidemployment_application[a5]"

      assert_select "textarea#paidemployment_application_a6[name=?]", "paidemployment_application[a6]"

      assert_select "textarea#paidemployment_application_a7[name=?]", "paidemployment_application[a7]"

      assert_select "textarea#paidemployment_application_a8[name=?]", "paidemployment_application[a8]"
    end
  end
end
