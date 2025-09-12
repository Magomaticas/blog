module ApplicationHelper
  # Extrae el nombre del usuario del email (parte antes del @)
  def user_display_name(user)
    return "Usuario anónimo" if user.nil?
    user.email.split("@").first.capitalize
  end

  def icon_plus
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 4v16m8-8H4"
    end
  end

  def icon_edit
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M15.232 5.232l3.536 3.536M9 13l6.586-6.586a2 2 0 112.828 2.828L11.828 15.828a2 2 0 01-2.828 0L9 13zm0 0V21h8"
    end
  end

  def icon_delete
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M6 18L18 6M6 6l12 12"
    end
  end

    # Helpers para iconos SVG
  def icon_user
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
    end
  end

  def icon_user_add
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z"
    end
  end

  def icon_logout
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"
    end
  end

  def icon_profile
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
    end
  end
  def icon_upload
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5 text-gray-700", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4"
    end
  end

  def icon_user_large
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-8 w-8 text-blue-600", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
    end
  end

  # Iconos para las notificaciones
  def icon_success
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5 text-green-500", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M5 13l4 4L19 7"
    end
  end

  def icon_error
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5 text-red-500", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M6 18L18 6M6 6l12 12"
    end
  end

  def icon_warning
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5 text-yellow-500", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-2.5L13.732 4c-.77-.833-1.964-.833-2.732 0L3.732 16.5c-.77.833.192 2.5 1.732 2.5z"
    end
  end

  def icon_info
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5 text-blue-500", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
    end
  end

  def icon_close
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M6 18L18 6M6 6l12 12"
    end
  end

    def icon_calendar
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
    end
  end

  def icon_clock
    content_tag :svg, xmlns: "http://www.w3.org/2000/svg", class: "h-4 w-4", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do
      content_tag :path, nil, stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
    end
  end

  # Helper para renderizar notificaciones flash
  def render_flash_messages
    return unless flash.any?

    content_tag :div, class: "fixed top-4 right-4 z-50 space-y-2" do
      flash.map do |type, message|
        next unless message.present?

        flash_class = case type.to_sym
        when :notice, :success
          "bg-green-100 border-green-400 text-green-700"
        when :alert, :error
          "bg-red-100 border-red-400 text-red-700"
        when :warning
          "bg-yellow-100 border-yellow-400 text-yellow-700"
        when :info
          "bg-blue-100 border-blue-400 text-blue-700"
        else
          "bg-gray-100 border-gray-400 text-gray-700"
        end

        content_tag :div, class: "flex items-center p-4 border rounded-lg shadow-lg max-w-sm #{flash_class}",
                   data: { controller: "flash", action: "click->flash#close" } do
          concat(
            content_tag :div, class: "flex-shrink-0 mr-3" do
              case type.to_sym
              when :notice, :success
                icon_success
              when :alert, :error
                icon_error
              when :warning
                icon_warning
              when :info
                icon_info
              else
                icon_info
              end
            end
          )
          concat(
            content_tag :div, class: "flex-1" do
              content_tag :p, message, class: "text-sm font-medium"
            end
          )
          concat(
            content_tag :button, class: "flex-shrink-0 ml-3 text-gray-400 hover:text-gray-600" do
              icon_close
            end
          )
        end
      end.join.html_safe
    end
  end

end