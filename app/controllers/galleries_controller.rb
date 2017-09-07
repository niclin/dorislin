class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.rank(:row_order).all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def about
  end
end
