class Api::V1::TracksController < ApplicationController
  
  def index
    @tracks = Track.all
  end

end