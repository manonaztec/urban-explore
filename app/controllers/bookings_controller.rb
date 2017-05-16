class BookingsController < ApplicationController
  def index
  end

  def create
    @engine = Engine.find(params[:engine_id])
    @booking = @engine.booking.new(bookings_params)
    if @booking.save!
      redirect_to engine_bookings_path(@engine)
    else
      render 'engine/show'
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:user_id, :engine_id)
  end
end
