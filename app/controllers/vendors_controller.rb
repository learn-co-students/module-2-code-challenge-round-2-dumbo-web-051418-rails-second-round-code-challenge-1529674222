class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def update
    Vendor.find(params[:id])
    # First I submit the form on the show page for vendors
    #next I found the vendor
    #associate the vendor to the sweet
  end

end
