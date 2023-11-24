class RatingsController < ApplicationController
  def new
    @emotion = Emotion.find(params[:emotion_id])
    @booking = Booking.find(params[:booking_id])
    @rating = @emotion.ratings.new
  end

  def create
    @emotion = Emotion.find(params[:emotion_id])
    @booking = Booking.find(params[:booking_id])
    @rating = @emotion.ratings.new(rating_params)
    if @rating.save
      redirect_to emotion_path(@emotion)
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment, :emotion_id, :booking_id)
  end
end
