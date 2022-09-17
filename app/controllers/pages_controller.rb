class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home map]

  def home
  end

  def dashboard
    @user = current_user
    start_date = params.fetch(:date, Date.today).to_date
    parties = Party.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @favorites = @user.all_favorited
    @parties = parties.select { |p| @favorites.include?(p) }
  end

  def map
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      {
        lat: party.latitude,
        lng: party.longitude,
        info_window: render_to_string(partial: "info_window", locals: { party: party })
      }
    end
  end
end
