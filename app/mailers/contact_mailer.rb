class ContactMailer < ApplicationMailer
    default from: "gerasimenkot92@gmail.com"
    
    banlist = ['Robertgraib']

    def send_email(name, email, message)
      @name = name
      @message = message
      @email = email
      if !banlist.include?(@name)
        mail(to: 'shaftsealkit@gmail.com', subject: 'Запрос с вэдмэдыка')
      end
    end
  end
  