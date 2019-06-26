class Api::V1::WarrantiesController < ApplicationController

  def index
    @warranties = Warranty.all
    render json: @warranties
  end

end
