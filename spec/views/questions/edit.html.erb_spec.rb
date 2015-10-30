require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :questions_list => "MyText",
      :job_type => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea#question_questions_list[name=?]", "question[questions_list]"

      assert_select "input#question_job_type[name=?]", "question[job_type]"
    end
  end
end
