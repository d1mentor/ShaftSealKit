class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    self.update(token: access_token.credentials.access_token)
    self.update(refresh_token: access_token.credentials.refresh_token)

    unless user
      user = User.create(
        email: data['email'],
        password: Devise.friendly_token[0,20],
        name: data['name'],
        token: access_token.credentials.token,                # сохраняем токен доступа
        refresh_token: access_token.credentials.refresh_token # сохраняем токен обновления
      )
    end

    user
  end
  
  def gmail
    client = Google::Apis::GmailV1::GmailService.new

    # Создаем объект авторизации
    client.authorization = Google::Auth::UserRefreshCredentials.new(
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      client_id: ENV['google_id'],
      client_secret: ENV['google_secret'],
      scope: Google::Apis::GmailV1::AUTH_GMAIL_MODIFY, # Измените область доступа на свои нужды
      redirect_uri: 'https://shaftsealkit.com',
      access_token: self.token,
      refresh_token: self.refresh_token
    )

    # self.update(token: client.authorization.access_token)
    # self.update(refresh_token: client.authorization.refresh_token)

    client
  end
end
