class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to @rating, notice: 'Rating was successfully created.'
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment)
  end
end
