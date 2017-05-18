class ShopsController < ApplicationController
  def show
    @shop = Shop.find(params[:id])
    @alert_message = "You are viewing #{@shop.name}"
  end
end
