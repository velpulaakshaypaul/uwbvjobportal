class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:about,:contact]

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

    if @job.jobtype=="Volunteer"
      render template: "pages/show_volunteer_questions"
    end
  end

  def showpaidquestions
    @application = Application.find_by_id(params[:application_id])
    @paidemployment_application = PaidemploymentApplication.new
  end

  def showvolunteerquestions
    @application = Application.find_by_id(params[:application_id])
    @volunteer_application = VolunteerApplication.new
  end

  def internreview
    @internship_application = InternshipApplication.new(internship_application_params)
    @application = Application.find_by_id(params[:application_id])
    @internship_application.applicant_id = @application.applicant_id
    @internship_application.application_id = @application.id
    @internship_application.job_id = @application.job_id
    @internship_application.save

    @applicant = Applicant.find_by_id(@application.applicant_id)
    @answer1 = params[:internship_application][:answer1]
    @answer2 = params[:internship_application][:answer2]
    @answer3 = params[:internship_application][:answer3]

    render template: "pages/intern_application_review"
    #@internship_application = Internship_application.find_by_id(@applicant.id)
  end

  def paidreview
    @paidemployment_application = PaidemploymentApplication.new(paidemployment_application_params)
    @application = Application.find_by_id(params[:application_id])
    @paidemployment_application.applicant_id = @application.applicant_id
    @paidemployment_application.job_id = @application.job_id
    @paidemployment_application.application_id = @application.id
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
    @resume = params[:paidemployment_application][:resume]
    @coverletter = params[:paidemployment_application][:coverletter]
    @references = params[:paidemployment_application][:references]
    @education = params[:paidemployment_application][:education]
    @experience = params[:paidemployment_application][:experience]
    render template: "pages/paidemploymentapplication_review"
    #@internship_application = Internship_application.find_by_id(@applicant.id)
  end
  
  def volunteerreview
    @volunteer_application = VolunteerApplication.new(volunteerapplication_params)
    @application = Application.find_by_id(params[:application_id])
    @applicant = Applicant.find_by_id(@application.applicant_id)
    @volunteer_application.Application_id = params[:application_id]
    @volunteer_application.Applicant_id = @application.applicant_id
    @volunteer_application.Job_id = @application.job_id
    @volunteer_application.save
    render template: "pages/volunteerapplication_review"
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

def volunteerapplicationsuccess
  @application = Application.find_by_id(params[:application_id])
  @application.status="Submitted"
  @application.save
  render template: "pages/volunteerapplication_success"
end
private
  def applyjobparams
    params.require(:applicant).permit!
  end

  def paidemployment_application_params
    params.require(:paidemployment_application).permit(:applicant_id, :job_id, :application_id, :referral_source, :preferred_contact, :availability_date, :desired_salary, :transportation, :over_eighteen, :work_proof, :controlledsubstance_test, :a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :resume, :coverletter, :references, :education, :experience)
  end

  def volunteerapplication_params
    params.require(:volunteer_application).permit(:Applicant_id,:job_id, :Application_id, :jobtitle, :employername, :employeraddress, :employerphone, :employerfax, :hoursavailable, :a1, :a2, :a3, :references)
  end

  def internship_application_params
    params.require(:internship_application).permit(:job_id, :applicant_id, :answer1, :answer2, :answer3, :worksample)
  end
end
