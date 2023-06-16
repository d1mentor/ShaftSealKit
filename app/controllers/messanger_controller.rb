class MessangerController < ApplicationController
  def home
    @emails = get_emails
  end

  def chat
  end

  def settings
  end

  private

  def get_emails
    gmail_service = current_user.gmail

    # Выполняем запрос на получение списка писем
    result = gmail_service.list_user_messages('me')

    # Получаем массив объектов писем
    messages = result.messages

    # Создаем массив для хранения информации о письмах
    emails = []

    # Получаем информацию о каждом письме и добавляем ее в массив
    messages.each do |message|
      email = gmail_service.get_user_message('me', message.id)
      subject = email.payload.headers.find { |header| header.name == 'Subject' }.value
      from = email.payload.headers.find { |header| header.name == 'From' }.value
      snippet = email.snippet

      emails << { subject: subject, from: from, snippet: snippet }
    end

    emails.split { |email| email[:from] }
  end
end
