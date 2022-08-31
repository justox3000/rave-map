class PartiesController < ApplicationController
  def index
    @parties = Party.all
    if params[:query].present?
      @parties = @parties.party_search(params[:query])
    end
  end
end
