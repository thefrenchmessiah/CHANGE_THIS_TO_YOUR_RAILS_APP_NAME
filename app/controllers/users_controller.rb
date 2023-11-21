class UsersController < ApplicationController
  before_action :set_user, only: %i[show destroy]

  def index
    @users = User.all
  end

  def show
    @emotions = Emotion.where(user_id: @user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'Your account was successfully deleted.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
