# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
  	UserMailer.contact_form("johndoe@example.com", "John Doe	", "Hello World!")
	end

	def welcome_form
  	UserMailer.welcome_form("billy", "nob","jay@gmail.com")
	end

end