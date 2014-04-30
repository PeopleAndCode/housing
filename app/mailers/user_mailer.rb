class UserMailer < ActionMailer::Base
  default from: "naomi.freeman@yahoo.ca"

  def welcome_email(user)
  	@user = user
  	@url = "http://repairs-system.herokuapp.com/users/sign_in"
  	mail(to: @user.email, subject: 'Welcome to this awesome site!')
  end
end
