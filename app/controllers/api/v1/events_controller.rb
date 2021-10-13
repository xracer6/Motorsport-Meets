class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
    render json: Event.all
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def create
    event = Event.new(event_params)

    if event.save
      render json: event
    else
      render json: { error: event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: {}, status: :no_content
  end

  protected

  def event_params
    event.require(:event).permit(:title, :description, :location, :organizer)
  end

  def authorize_user
    if !user_signed_in? || !(current_user.role == "admin")
      render json: {error: ["Only admins have access to this feature"]}
    end
  end

  def authenticate_user
    if !user_signed_in?
      render json: {error: ["You need to be signed in first"]}
    end
  end
end