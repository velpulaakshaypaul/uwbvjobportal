require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :questions_list => "MyText",
        :job_type => "Job Type"
      ),
      Question.create!(
        :questions_list => "MyText",
        :job_type => "Job Type"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
  end
end
