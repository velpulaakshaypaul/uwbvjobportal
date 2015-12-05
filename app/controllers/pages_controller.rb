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
    @job=Job.find_by_id(params[:job_id])
    @applicant = Applicant.new(applyjobparams[:applicantdetails])
    @applicant.save

    @application = Application.new
    @application.job_id = params[:job_id]
    @application.applicant_id=@applicant.id
    @application.status="started"
    @application.save

    if @job.jobtype=="Internship"
      @internship_application = InternshipApplication.new
      render template: "pages/applicant_show_questions"
    end

    if @job.jobtype=="Paid Employment"
      @mostrecentapplication = PaidemploymentApplication.all.where(['deadline > ?', DateTime.now]).order("created_at DESC").first
      redirect_to new_paidemployment_application_path, flash: {application_id: @mostrecentapplication.id}
    end
  end

  def internreview
    @internship_application = InternshipApplication.new
    @application = Application.find_by_id(params[:application_id])
    @internship_application.job_id = @application.job_id
    @internship_application.application_id = @application.id
    @internship_application.applicant_id = params[:application_id]
    @internship_application.answer1 = params[:internship_application][:answer1].to_s + "%" + params[:internship_application][:answer2] + "%" + params[:internship_application][:answer3]
    @internship_application.save

    @applicant = Applicant.find_by_id(@application.applicant_id)
    @answer1 = params[:internship_application][:answer1]
    @answer2 = params[:internship_application][:answer2]
    @answer3 = params[:internship_application][:answer3]

    render template: "pages/intern_application_review"
    #@internship_application = Internship_application.find_by_id(@applicant.id)
  end

def internapplicationsuccess
  @application = Application.find_by_id(params[:application_id])
  @application.status="Submitted"
  @application.save
  render template: "pages/internship_application_success"
end

def paidapplicationsuccess
  @application = Application.find_by_id(params[:application_id])
  @application.status="Submitted"
  @application.save
  render template: "pages/paid_application_success"
end

private
  def applyjobparams
    params.require(:applicant).permit!
  end

end
