class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
    @booking
  end

  def new
    @booking = Booking.new
    @emotion = Emotion.find(params[:emotion_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @emotion = Emotion.find(params[:emotion_id])

    if @booking.save
      redirect_to emotion_path(@emotion), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:client_id, :owner_id, :start_date, :end_date)
  end
end
