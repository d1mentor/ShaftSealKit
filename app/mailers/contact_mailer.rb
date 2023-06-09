class ContactMailer < ApplicationMailer
    default from: "gerasimenkot92@gmail.com"
    
    def send_email(name, email, message)
      @name = name
      @message = message
      @email = email
      mail(to: 'shaftsealkit@gmail.com', subject: 'Запрос с вэдмэдыка')
    end
  end
  