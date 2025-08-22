class WelcomeMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000'
    mail(to: @user.email, subject: '¡Bienvenido a mi Blog!')
  end

  def password_reset(user)
    @user = user
    @reset_url = edit_user_password_url(reset_password_token: @user.reset_password_token)
    mail(to: @user.email, subject: 'Restablecer contraseña - Blor')
  end
end