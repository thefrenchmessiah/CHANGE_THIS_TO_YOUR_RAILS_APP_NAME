class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
    # filter for emotions by universalEmotion
    if params[:universalEmotion]
      universal_emotion = params[:universalEmotion]
      @emotions = Emotion.where(universalEmotion: universal_emotion)
    end
  end

  def show
    @emotion = Emotion.find(params[:id])
  end

  def new
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new(emotion_params)
  end

  private

  def emotion_params
    params.require(:emotion).permit(:name, :universalEmotion, :description)
  end
end
