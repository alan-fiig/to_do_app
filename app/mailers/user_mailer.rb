class UserMailer < ApplicationMailer
  default from: 'alanfigueroaiglesias@gmail.com'

  def welcome_email
    @user =  params[:user]
    @url =  'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to my Web Site :)')
  end
end
