class InquiriesController < ApplicationController
  before_action :set_inquiry, only: %i[show edit update destroy]

  def index
    @inquiries = Inquiry.all
  end

  def show; end

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiries_params)
    if @inquiry.save
      redirect_to @inquiry, notice: 'Inquiry was successfully created.'
    else
      render :new
    end
  end

  private

  def set_inquiry
    @inquiry = Inquiry.find(params[:id])
  end

  def inquiries_params
    params.require(:inquiry).permit(:message)
  end
end
