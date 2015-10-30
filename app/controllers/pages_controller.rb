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
  def paidemployment
    @paidemployment
  end
  def volunteer
    @volunteer
  end

end
