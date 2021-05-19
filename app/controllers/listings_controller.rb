class ListingsController < ApplicationController

  # GET /listings
  def index
    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/1
  def show
    set_listing
    render json: @listing
  end

  # POST /listings
  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      render json: @listing, status: :created, location: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listings/1
  def update
    if @listing.update(listing_params)
      render json: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listings/1
  def destroy
    @listing = Listing.find(params[:id]).destroy
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
    # Only allow a list of trusted parameters through.
    def listing_params
       params.require(:listing).permit(:imgsrc, :brand, :year, :size, :description, :title)
     end
end
