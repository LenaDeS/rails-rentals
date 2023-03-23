class ListingsController < ApplicationController

  before_action :set_listing, only: [:show, :update, :destroy]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
  end


  def create
    @listing = Listing.new(params[:listing])
    @listing.save
  end

  def update
  end

  def delete
  end

  private

  def listing_params
    params.require(:listing).permit(:num_rooms)
  end


  def set_listing
    @listing = Listing.find(params[:id])
  end

end
