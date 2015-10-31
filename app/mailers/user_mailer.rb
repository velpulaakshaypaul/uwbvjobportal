class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
  #  @url  = 'http://example.com/login'
    mail(to: "velpulaakshaypaul@gmail.com", subject: @user.firstname)
  end
end
