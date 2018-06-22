class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to @vendor_sweet.vendor
    else
      render :new
    end

  end


  private
  def vendor_params
    params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :comment)
  end

end
