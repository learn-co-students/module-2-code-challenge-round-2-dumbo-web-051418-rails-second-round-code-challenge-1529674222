class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @banana = "banana"
    render :index
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweet = VendorSweet.new
    @vendor_sweet.save
  end

  # def new
  #   @vendor_sweet = VendorSweet.new
  # end
  #
  # def create
  #   @vendor_sweet = VendorSweet.new(vendor_sweet_params)
  # end


  # private
  # def vendor_sweet_params
  #   params.require(:vendor_sweets).permit(:vendor_id, :sweet_id, :comment)
  # end

end
