class ContactMailer < ApplicationMailer
    default from: "gerasimenkot92@gmail.com"
    
    def send_email(name, email, message)
      @name = name
      @message = message
      @email = email
      mail(to: 'gerasimenkot92@gmail.com', subject: 'Новое сообщение с формы контакта')
    end
  end
  