class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)

    if @message.save
      render json: ['Thank you! :)'], status: 200
    else
      render json: @message.errors.full_messages, status: 422
    end
  end

  def index
    @messages = Message.all
    render :index
  end

  def show
    @message = Message.find_by(id: params[:id])
    if @message
      render :show
    else
      render json: ['Message not found'], status: 404
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @messages = Message.all
    if @message
      @message.destroy
      render :index
    else
      render json: ['Message not found'], status: 404
    end
  end


  private
  def message_params
    params.require(:message).permit(:message)
  end
end
