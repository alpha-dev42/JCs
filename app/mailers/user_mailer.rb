class UserMailer < ApplicationMailer
	default from: "jayscameras@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'johnny.ly209@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome_form(first_name, last_name, email)
    @appname = "Jay's Cameras"
   	mail(to: email,
      	 subject: "Welcome to #{@appname}!")
  end
end
