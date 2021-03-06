require 'rails_helper'

RSpec.describe "internship_applications/edit", type: :view do
  before(:each) do
    @internship_application = assign(:internship_application, InternshipApplication.create!(
      :job_id => 1,
      :applicant_id => 1,
      :answers_list => "MyString"
    ))
  end

  it "renders the edit internship_application form" do
    render

    assert_select "form[action=?][method=?]", internship_application_path(@internship_application), "post" do

      assert_select "input#internship_application_job_id[name=?]", "internship_application[job_id]"

      assert_select "input#internship_application_applicant_id[name=?]", "internship_application[applicant_id]"

      assert_select "input#internship_application_answers_list[name=?]", "internship_application[answers_list]"
    end
  end
end
