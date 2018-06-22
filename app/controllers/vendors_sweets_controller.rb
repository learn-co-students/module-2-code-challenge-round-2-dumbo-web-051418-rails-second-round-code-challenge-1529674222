class VendorsSweetsController < ApplicationController

  def new
    @vendors_sweet = VendorsSweet.new
  end

  def create
    @vendors_sweet = VendorsSweet.new
    if @vendor_sweet.save(vendor_params)
      redirect_to vendors_path
    else

    end
  end

end
