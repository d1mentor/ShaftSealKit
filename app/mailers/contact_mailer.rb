class ContactMailer < ApplicationMailer
    default from: "gerasimenkot92@gmail.com"

    def send_email(name, email, message)
      banlist = ['Robertgraib']
      @name = name
      @message = message
      @email = email
      if !banlist.include?(@name)
        mail(to: 'shaftsealkit@gmail.com', subject: 'Запрос с вэдмэдыка')
      end
    end
  end
  