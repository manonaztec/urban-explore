class EnginesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end


  def show
    @engine = Engine.find(params[:id])
    @booking = Booking.new
  end
end
