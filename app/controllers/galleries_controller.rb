class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.where(is_hidden: false).rank(:row_order).all

    set_page_image "https://dorislin.me/img/about.jpg"
  end

  def show
    @gallery = Gallery.friendly.find(params[:id])

    set_page_title @gallery.title
    set_page_description @gallery.description
    set_page_image "https://dorislin.me#{@gallery.image.url}"
  end

  def about
    set_page_title "About - 關於我"
    set_page_image "https://dorislin.me/img/about.jpg"
  end
end
