class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @room = @photo.room

    @photo.destroy
    @photos = Photo.where(room_id: @room.id)
    respond_to :js
  end
  
  private

    # Use strong_parameters for attribute whitelisting
    # Be sure to update your create() and update() controller methods.

    def photo_params
      params.require(:photo).permit(:room_id, :image_file_name)
    end
end
