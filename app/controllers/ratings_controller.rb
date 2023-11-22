class RatingsController < ApplicationController
  def new
    @emotion = Emotion.find(params[:emotion_id])
    @booking = Booking.find(params[:booking_id])
    @rating = Rating.new
  end

  def create
    @emotion = Emotion.find(params[:emotion_id])
    @booking = Booking.find(params[:booking_id])
    # @rating = Rating.new(rating_params)
    # if @rating.save
    #   redirect_to @rating, notice: 'Rating was successfully created.'
    # else
    # #   render :new
    # # end
    # @rating = @booking.ratings.build(rating_params.merge(emotion: @emotion))

    # if @rating.save
    #   redirect_to @rating, notice: 'Rating was successfully created.'
    # else
    #   render :new
    # end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment, :emotion_id, :booking_id)
  end
end
