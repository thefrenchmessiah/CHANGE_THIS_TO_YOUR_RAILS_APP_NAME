class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
    # filter for emotions by universalEmotion
    # if params[:universalEmotion]
    #   universalEmotion = params[:universalEmotion]
    #   emotion = Emotion.find_by(universalEmotion: universalEmotion)
    #   @emotions = [emotion]
    # end
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
  end
end
