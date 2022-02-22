class BookingsController < ApplicationController
  before_action :set_buddy, only: [:new, :create]


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.buddy = @buddy
    if @booking.save
      redirect_to buddy_path(@buddy)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:request_message, :date, :buddy_id)
  end

  def set_buddy
    @buddy = Buddy.find(params[:buddy_id])
  end
end
