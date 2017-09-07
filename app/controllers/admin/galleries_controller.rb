class Admin::GalleriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @galleries = Gallery.rank(:row_order).all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save!
      redirect_to admin_galleries_path
    else
      render :new
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update(gallery_params)
      redirect_to admin_galleries_path
    else
      render :edit
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])

    @gallery.destroy

    redirect_to admin_galleries_path
  end

  def reorder
    @gallery = Gallery.find(params[:id])
    @gallery.row_order_position = params[:position]
    @gallery.save!


    respond_to do |format|
      format.html { redirect_to admin_galleries_path }
      format.json { render :json => { :message => "ok" }}
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:title, :description, :image, :is_hidden, :show_text, :detail_description, attachments_attributes: [:id, :attachment, :_destroy])
  end
end
