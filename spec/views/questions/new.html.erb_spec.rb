require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :questions_list => "MyText",
      :job_type => "MyString"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea#question_questions_list[name=?]", "question[questions_list]"

      assert_select "input#question_job_type[name=?]", "question[job_type]"
    end
  end
end
