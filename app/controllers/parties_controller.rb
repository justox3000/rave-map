class PartiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @parties = Party.all
    @parties = policy_scope(Party)
    if params[:query].present?
      @parties = @parties.party_search(params[:query])
    end
    @parties = @parties.where(date: params[:date]) if params[:date].present?
  end

  def new
    @party = Party.new
    authorize @party
  end

  def show
    @party = Party.find(params[:id])
    @markers = [{
      lat: @party.latitude,
      lng: @party.longitude,
      info_window: render_to_string(partial: "info_window", locals: { party: @party })
    }]
    authorize @party
  end

  # def add_to_cal
  #   @party = Party.find(params[:id])
  #   @dt = DateTime.parse("#{@party.date}T#{@party.start_time.strftime("%l:%M %p")}")
  #   @cal = AddToCalendar::URLs.new(
  #     start_datetime: @dt,
  #     title: @party.title,
  #     timezone: 'Europe/London'
  #   )
  # end

  def edit
    @user = current_user
    @party = Party.find(params[:id])
    authorize @party
  end

  def create
    @party = Party.new(party_params)
    authorize @party
    @party.user = current_user
    if @party.save
      redirect_to party_path(@party)
    else
      render :new
    end
  end

  def update
    @party = Party.find(params[:id])
    if @party.update!(party_params)
      redirect_to party_path(@party)
    else
      render :edit, status: :unprocessable_entity
    end
    authorize @party
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to root_path, status: :see_other
    authorize @party
  end

  def favorite
    return redirect_to new_user_registration_path unless current_user
    @party = Party.find(params[:id])
    authorize @party
    if current_user.favorited?(@party)
      current_user.unfavorite(@party)
    else
      current_user.favorite(@party)
    end
  end

  private

  def party_params
    params.require(:party).permit(:title, :music_genre, :location, :description, :date, :start_time, :photo)
  end
end
