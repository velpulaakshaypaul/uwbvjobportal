require 'rails_helper'

RSpec.describe "internship_applications/show", type: :view do
  before(:each) do
    @internship_application = assign(:internship_application, InternshipApplication.create!(
      :job_id => 1,
      :applicant_id => 2,
      :answers_list => "Answers List"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Answers List/)
  end
end
