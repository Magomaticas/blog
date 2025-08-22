module ApplicationHelper
  # Extrae el nombre del usuario del email (parte antes del @)
  def user_display_name(user)
    user.email.split("@").first.capitalize
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

end