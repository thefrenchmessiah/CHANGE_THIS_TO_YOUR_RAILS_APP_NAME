class EmotionsController < ApplicationController
  before_action :set_emotion, only: %i[show edit update destroy]

  def index
    @emotions = Emotion.all
    if params[:filter]
      @emotions = Emotion.where(universal_emotion: params[:filter])
    else
      @emotions = Emotion.all
    end
  end

  def show
    @owner = User.find(@emotion.user_id)
    @inquiry = Inquiry.new
    @booking = Booking.new
  end

  def new
    @emotion = Emotion.new
    @user = current_user
    @universal_emotions = UniversalEmotion.all
  end

  def create
    @emotion = current_user.emotions.build(emotion_params)

    if @emotion.save
      redirect_to root_path, notice: 'Emotion was successfully created.'
    else
      @universal_emotions = UniversalEmotion.all
      render :new
    end
  end

  def edit; end

  def update
    @emotion.update(emotion_params)
    redirect_to root_path
  end

  def destroy
    @emotion.destroy
    redirect_to user_path(current_user), notice: "Emotion was successfully deleted."
  end

  private

  def set_emotion
    @emotion = Emotion.find(params[:id])
  end

  def emotion_params
    params.require(:emotion).permit(:name, :universal_emotion_id, :description, :photo)
  end
end
