class VendorsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
  end

  def index
    @vendors = Vendor.all
  end

  def show
    @sweets = Sweet.all
    @vendor = Vendor.find(params[:id])
    @vendor_sweet = VendorSweet.new
  end

end
