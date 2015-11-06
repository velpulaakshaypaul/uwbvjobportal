class PagesController < ApplicationController
  def about
    render template: "pages/about"
  end

  def contact
  end

  def home
    @jobs = Job.all.where(['deadline > ?', DateTime.now]).order("created_at DESC")
    render template: "pages/applicant_home"
  end

  def showjob
    @job=Job.find_by_id(params[:job_id])
    render template: "pages/applicant_show_job"
  end

  def applyjob
    @job=Job.find_by_id(params[:job_id])
    @applicant = Applicant.new
    render template: "pages/applicant_apply_job"
  end

  def showquestions
    @questions = Question.where(:job_id => params[:job_id])
    render template: "pages/applicant_show_questions"
  end

end
