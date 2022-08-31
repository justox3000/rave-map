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

  def favorite
    @party = Party.find(params[:id])
    current_user.favorite(@party)
    redirect_to party_path(@party)
  end
end
