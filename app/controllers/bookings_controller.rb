class BookingsController < ApplicationController
  def create
    @engine = Engine.find(params[:engine_id])
    @booking = @engine.bookings.new(user: current_user)
    if @booking.save!
      redirect_to account_bookings_path
    else
      render 'engine/show'
    end
  end
end
