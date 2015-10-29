class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
  #  @url  = 'http://example.com/login'
    mail(to: "karthik2014mays@tamu.edu", subject: 'Welcome to My Awesome Site')
  end
end
