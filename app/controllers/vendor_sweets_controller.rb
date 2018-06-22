class VendorSweetsController < ApplicationController
  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    byebug
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    redirect_to vendor_path(@vendor_sweet.vendor.id)
  end


private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end
end
