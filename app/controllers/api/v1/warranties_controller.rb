class Api::V1::WarrantiesController < ApplicationController
  before_action :get_warranty, only: [:show, :edit, :destroy]

  def index
    @warranties = Warranty.all
    render json: @warranties
  end

  def show
    render json:@warranty
  end

  def edit
    @warranty.update(warranty_params)
    @warranty.save
  end

  def create
    warranty = Warranty.create(warranty_params)
    warranty.save
  end

  def destroy
    @warranty.destroy
  end

  private
    def get_warranty
      @warranty = Warranty.find(params[:id])
    end

    def warranty_params
      params.require(:warranty).permit(:name, :category, :wrnty_days, :buy_date, :notes, :user_id, :expiration)
    end
end
