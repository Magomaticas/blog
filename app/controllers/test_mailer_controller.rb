class TestMailerController < ApplicationController

  def send_test_email
    # Email de prueba - funciona con usuario logueado
    user = current_user
    message = "Email enviado al usuario real: #{user.email}"
    WelcomeMailer.welcome_email(user).deliver_now
    redirect_to root_path, notice: "#{message}. Revisa Mailhug en http://localhost:8025"
  end

  def test_notifications
    # Demostrar diferentes tipos de notificaciones
    flash[:success] = "¡Operación completada exitosamente!"
    flash[:error] = "Ha ocurrido un error inesperado"
    flash[:warning] = "Advertencia: Este es un mensaje de prueba"
    flash[:info] = "Información: Este es un mensaje informativo"

    redirect_to root_path
  end

  def test_single_notification
    # Demostrar una sola notificación
    notification_type = params[:type] || "notice"
    message = params[:message] || "Mensaje de prueba"

    flash[notification_type.to_sym] = message
    redirect_to root_path
  end
end

