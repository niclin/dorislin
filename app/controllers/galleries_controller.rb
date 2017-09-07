class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.where(is_hidden: false).rank(:row_order).all

    set_page_title "Portfolio - 作品集"
  end

  def show
    @gallery = Gallery.find(params[:id])

    set_page_title @gallery.title
    set_page_description @gallery.description
    set_page_image "https://dorislin.info#{@gallery.image.url}"
  end

  def about
  end
end
