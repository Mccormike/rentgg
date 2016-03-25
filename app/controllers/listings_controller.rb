class ListingsController < ApplicationController
  def show
    @listing = Listing.find(params[:id])
    @order = Order.new
    @order.listing = @listing
  end

  def current_user_listings
    @listings = current_user.listings
  end

  def new
    @listing = Listing.new
  end
  
  def index
    redirect_to '/my_listings'
  end
  
  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, message: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end  

  private

  def listing_params
     params.require(:listing).permit(:title, :description, :image, :address_line_1, :address_line_2, :city, :state, :zip, :hourly_rate, :daily_rate, :weekly_rate)
  end  


end

