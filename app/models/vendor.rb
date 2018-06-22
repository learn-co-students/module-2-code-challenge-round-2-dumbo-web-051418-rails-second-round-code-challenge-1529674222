class Vendor < ApplicationRecord
  has_many :vendors_sweets
  has_many :sweets, through: :vendors_sweets

  def sweet_id(id)
    self.sweets << Sweet.all.find(id) 
  end
end
