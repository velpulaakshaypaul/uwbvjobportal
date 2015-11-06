class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
  #  @url  = 'http://example.com/login'
#<<<<<<< HEAD
    mail(to: "velpulaakshaypaul@gmail.com", subject: 'Welcome to My Awesome Site')
#=======
    mail(to: "velpulaakshaypaul@gmail.com", subject: @user.firstname)
#>>>>>>> e6b1b225c542ff112034bb5fade7eb2de6c16b30
  end
end
