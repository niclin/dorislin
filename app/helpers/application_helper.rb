module ApplicationHelper
  def render_hover_text(gallery)
    if gallery.show_text == true
      "box-masonry-text"
    else
      "box-masonry-hover-text-header"
    end
  end

  def render_hover_icon(gallery)
    return "with-hover-icon" if gallery.show_text == true
  end
end
