class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @sweets = Sweet.all
  end

  # def update
  #   @vendor = Vendor.find(params[:id])
  #   @vendors_sweet = VendorSweet.new
  #
  #   if @vendor_sweet.save(vendor_params)
  #     redirect_to vendor_path(@vendor)
  #   else
  #     I'd add flash error here
  #   end
  # end

  private
  def vendors_params
    params.require(:vendor).permit(:sweet_id,:comment)
  end

end
