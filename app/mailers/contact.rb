class Contact < ApplicationMailer
  default from: "Bug-Blasters-Inc"
  # layout 'mailer'


  def contact_email(email,message)
    @email = email
    @message= message
    @url  = 'http://example.com/login'
    mail(to: ENV.fetch('BUG_EMAIL'), subject: 'Message Received from Bug Blaster Site!')
  end



end
