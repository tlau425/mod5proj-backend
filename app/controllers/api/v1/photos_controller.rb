class Api::V1::PhotosController < ApplicationController
before_action :get_photo, only: [:show]

  def index
    @photos = Photo.all
    render json: @photos
  end
  
  def show
    render json: @photo
  end


  private
    def get_photo
      @photo = Photo.find(params[:id])
    end
end
