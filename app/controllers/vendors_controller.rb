class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @sweets = Sweet.all
    # byebug
    @vendors_sweet = VendorsSweet.new
  end

  # def update
  #   @vendor = Vendor.find(params[:id])
  #
  #   if @vendor_sweet.save(vendors_params)
  #     redirect_to vendor_path(@vendor)
  #   else
      #I'd add flash error here
  #   end
  # end

  private
  def vendors_params
    params.require(:vendors_params).permit(:sweet_id,:comment)
  end

end
