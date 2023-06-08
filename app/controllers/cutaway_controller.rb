class CutawayController < ApplicationController
  def index
  end

  def privacy_policy
  end

  def terms_of_service
  end

  def send_form
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.send_email(name, email, message).deliver_now
    redirect_to root_path, notice: 'Спасибо за ваше сообщение. Мы свяжемся с вами в ближайшее время.'
  end
end
