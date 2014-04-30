class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://repairs-system.herokuapp.com/users/sign_in"
  	mail(to: @user.email, subject: 'Welcome to this awesome site!')
  end
end
