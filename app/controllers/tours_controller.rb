class ToursController < ApplicationController
  before_action :find_tour, only: [:show, :edit, :update, :destroy]

  def index

   if params[:category].blank?
      @tours = Tour.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @tours = Tour.where(category_id: @category_id).order("created_at DESC")
    end
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
    if @tour.update(tours_params)
      redirect_to @tour
    else
      render "Edit"
    end
  end

  def destroy
    @tour.destroy
    redirect_to root_path
  end

  def tours_params
    params.require(:tour).permit(:tour, :place, :description, :price, :date, :duration, :reservations, :reviews, :category_id)
  end

  def find_tour
    @tour = Tour.find(params[:id])
  end




end
