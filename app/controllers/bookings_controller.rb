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
    @booking.buddy = @booking
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to buddy_path(@buddy)
  end

  def edit
    @booking = Booking
  end

  def update
  end

  def destroy
    @booking.destroy
    redirect_to list_path(@booking.list)
  end

  private

  def booking_params
    params.require(:booking).permit(:request_message, :date, :buddy_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_buddy
    @buddy = Buddy.find(params[:buddy_id])
  end
end
