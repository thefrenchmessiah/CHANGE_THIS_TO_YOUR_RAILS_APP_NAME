class EmotionsController < ApplicationController
  before_action :set_emotion, only: %i[show edit update destroy]

  def index
    @emotions = Emotion.all
    # filter for emotions by universalEmotion
    if params[:universalEmotion]
      universal_emotion = params[:universal_emotion_id]
      @emotions = Emotion.where(universalEmotion: universal_emotion)
    end
  end

  def show; end

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
    redirect_to root_path
  end

  private

  def set_emotion
    @emotion = Emotion.find(params[:id])
  end

  def emotion_params
    params.require(:emotion).permit(:name, :universal_emotion_id, :description)
  end
end
