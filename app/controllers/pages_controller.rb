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
      render template: "pages/show_paidemployment_questions"
    end
  end

  def showpaidquestions
    @application = Application.find_by_id(params[:application_id])
    @paidemployment_application = PaidemploymentApplication.new
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

  def paidreview
    @paidemployment_application = PaidemploymentApplication.new
    @application = Application.find_by_id(params[:application_id])
    @paidemployment_application.job_id = @application.job_id
    @paidemployment_application.application_id = @application.id
    @paidemployment_application.applicant_id = params[:application_id]
    @paidemployment_application.a1 = params[:paidemployment_application][:a1].to_s
    @paidemployment_application.a2 = params[:paidemployment_application][:a2].to_s
    @paidemployment_application.a3 = params[:paidemployment_application][:a3].to_s
    @paidemployment_application.a4 = params[:paidemployment_application][:a4].to_s
    @paidemployment_application.a5 = params[:paidemployment_application][:a5].to_s
    @paidemployment_application.a6 = params[:paidemployment_application][:a6].to_s
    @paidemployment_application.a7 = params[:paidemployment_application][:a7].to_s
    @paidemployment_application.a8 = params[:paidemployment_application][:a8].to_s
    @paidemployment_application.referral_source = params[:paidemployment_application][:referral_source]
    @paidemployment_application.preferred_contact = params[:paidemployment_application][:preferred_contact]
    @paidemployment_application.availability_date = params[:paidemployment_application][:availability_date]
    @paidemployment_application.desired_salary = params[:paidemployment_application][:desired_salary]
    @paidemployment_application.transportation = params[:paidemployment_application][:transportation]
    @paidemployment_application.over_eighteen = params[:paidemployment_application][:over_eighteen]
    @paidemployment_application.work_proof = params[:paidemployment_application][:work_proof]
    @paidemployment_application.controlledsubstance_test = params[:paidemployment_application][:controlledsubstance_test]
    @paidemployment_application.save

    @applicant = Applicant.find_by_id(@application.applicant_id)
    @answer1 = params[:paidemployment_application][:a1]
    @answer2 = params[:paidemployment_application][:a2]
    @answer3 = params[:paidemployment_application][:a3]
    @answer4 = params[:paidemployment_application][:a4]
    @answer5 = params[:paidemployment_application][:a5]
    @answer6 = params[:paidemployment_application][:a6]
    @answer7 = params[:paidemployment_application][:a7]
    @answer8 = params[:paidemployment_application][:a8]
    @referral_source = params[:paidemployment_application][:referral_source]
    @preferred_contact = params[:paidemployment_application][:preferred_contact]
    @availability_date = params[:paidemployment_application][:availability_date]
    @desired_salary = params[:paidemployment_application][:desired_salary]
    @transportation = params[:paidemployment_application][:transportation]
    @over_eighteen = params[:paidemployment_application][:over_eighteen]
    @work_proof = params[:paidemployment_application][:work_proof]
    @controlledsubstance_test = params[:paidemployment_application][:controlledsubstance_test]

    render template: "pages/paidemploymentapplication_review"
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
