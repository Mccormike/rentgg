class StaticPagesController < ApplicationController
  def home
    @listings = Listing.all
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def index
  end
  
end
