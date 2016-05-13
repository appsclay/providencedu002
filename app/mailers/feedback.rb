class Feedback < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback.get_mail.subject
  #
  
  def get_mail(name,mmail,mmessage)
			
			mail(
				to: 'vikas@providencedu.in',
				from: 'sales@appsclay.com',
				subject: 'Feedback Mail from '+name.to_s,
				body: 'from: '+mmail.to_s+' mesage is -'+mmessage.to_s+' :'
			)

	end

end
