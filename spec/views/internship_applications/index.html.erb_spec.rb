require 'rails_helper'

RSpec.describe "internship_applications/index", type: :view do
  before(:each) do
    assign(:internship_applications, [
      InternshipApplication.create!(
        :job_id => 1,
        :applicant_id => 2,
        :answers_list => "Answers List"
      ),
      InternshipApplication.create!(
        :job_id => 1,
        :applicant_id => 2,
        :answers_list => "Answers List"
      )
    ])
  end

  it "renders a list of internship_applications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Answers List".to_s, :count => 2
  end
end
