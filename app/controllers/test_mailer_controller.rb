class TestMailerController < ApplicationController
  def send_test_email
    # Email de prueba - funciona con usuario logueado
    user = current_user
    message = "Email enviado al usuario real: #{user.email}"
    WelcomeMailer.welcome_email(user).deliver_now
    redirect_to root_path, notice: "#{message}. Revisa Mailcatcher en http://localhost:1080"
  end
end
