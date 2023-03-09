class TripsController < ApplicationController
  before_action :set_trip, only: %i[show edit destroy]

  def index
    if params[:query].present?
      @trips = Trip.where("name ILIKE :query OR address ILIKE :query OR description ILIKE :query", query: "%#{params[:query]}%")
    else
      @trips = Trip.all
    end
  end

  def show
    # @trip= Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @trip = Trip.find(params[:id])
  end

  def update
    # @trip = Trip.find(params[:id])

    @trip = Trip.update(trip_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    # @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trip_path, status: :see_other
  end

  def select
    @user_trips = Trip.where(user: current_user)
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :address, :price, :description, photos: [])
  end
end
