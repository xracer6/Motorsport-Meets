class Api::V1::TracksController < ApplicationController
  
  def index
    @tracks = Track.all
    render json: Track.all
  end

  def show
    @track = Track.find(params[:id])
    render json: track
  end

  def track_params
    track.require(:name).permit(:location, :track_type, :length, :corners, :description)
  end

end