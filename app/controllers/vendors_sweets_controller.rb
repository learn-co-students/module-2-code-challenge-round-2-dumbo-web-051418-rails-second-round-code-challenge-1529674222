class VendorsSweetsController < ApplicationController

  def new
    @vendors_sweet = VendorsSweet.new
  end

  def create
    @vendors_sweet = VendorsSweet.new(new_params)
    # @vendors_sweet.vendor_id = new_params
    if @vendors_sweet.valid?
      @vendors_sweet.save
      redirect_to vendors_path
    else
      # flash[:error].messages
      render 'vendors/show'
    end
  end

  private
  def new_params
    params.require(:vendors_sweet).permit(:vendor_id,:sweet_id,:comment)

  end

end
