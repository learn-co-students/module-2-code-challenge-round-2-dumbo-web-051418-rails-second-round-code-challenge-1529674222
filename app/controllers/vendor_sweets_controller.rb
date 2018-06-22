# The vendor_sweet association form will allow us to:
#
# Select a sweet from a dropdown.
# Leave a comment.
# Make sure that every vendor_sweet association record MUST include a sweet and a comment.
#
# Make sure the flatiron staff cannot add more than one of the same sweets to a vendor.

class VendorSweetsController < ApplicationController

  def new
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor.id)
    else
      #redirect_to vendor_path(@vendor)
      #this should redirect to the vendor's show page when it doesn't work
    end
  end

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end

end
