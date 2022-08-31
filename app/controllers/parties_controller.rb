class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
    @markers = [{
      lat: @party.latitude,
      lng: @party.longitude
    }]
  end
end
