module ArticlesHelper
  def publication_state_badge(article)
    case article.publication_state
    when "published"
      content_tag :span, "Publicado", class: "inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 w-fit"
    when "draft"
      content_tag :span, "Borrador", class: "inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800 w-fit"
    else
      content_tag :span, "Desconocido", class: "inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800 w-fit"
    end
  end
end