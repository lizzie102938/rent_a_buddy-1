class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_buddy, only: [:new, :create]

  def index
    @bookings = Booking.all
    @user = User.find(params[:user_id])
  end

  def show
    @booking = User.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.buddy = @buddy
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:request_message, :starts_at, :ends_at, :buddy_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_buddy
    @buddy = Buddy.find(params[:buddy_id])
  end
end
