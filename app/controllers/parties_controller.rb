class PartiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @parties = Party.all
    if params[:query].present?
      @parties = @parties.party_search(params[:query])
    end
    @parties = @parties.where(date: params[:date]) if params[:date].present?
  end

  def show
    @party = Party.find(params[:id])
    @markers = [{
      lat: @party.latitude,
      lng: @party.longitude,
    }]
  end

  def favorite
    return redirect_to new_user_registration_path unless current_user

    @party = Party.find(params[:id])
    if current_user.favorited?(@party)
      current_user.unfavorite(@party)
    else
      current_user.favorite(@party)
    end
  end
end
