class ToursController < ApplicationController
  before_action :find_tour, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @tour = Tour.new
  end

  def show
  end

  def create
    @tour = Tour.new(tours_params)

    if @tour.save
      redirect_to @tour
    else
      render "New"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def tours_params
    params.require(:tour).permit(:tour, :place, :description, :price, :date, :duration, :reservations, :reviews)
  end

  def find_tour
    @tour = Tour.find(params[:id])
  end




end
