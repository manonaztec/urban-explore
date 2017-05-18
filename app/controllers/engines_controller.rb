class EnginesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  #   def index
  #   if params[:address].present?
  #     @shops_id = Shop.near(params[:address], 10)
  #   else
  #     @engines = Engine.all
  #   end
  # end

  def index
    if search_params[:address] == nil
      @engines = Engine.all
    else
      shop_ids = Shop.near(search_params[:address], 10).to_a.pluck(:id)
      # Engine.where('shop_id IN (?)', shop_ids)
      @engines = Engine.where(shop_id: shop_ids)
    end
  end

  def show
    @engine = Engine.find(params[:id])
    @booking = Booking.new
    @shop = @engine.shop
  end

  private

  def search_params
    params.require(:search).permit(:address)
  end
end
