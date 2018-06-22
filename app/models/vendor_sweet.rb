class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :sweet_id, uniqueness: true
  validates :vendor_id, presence: true
  validates :sweet_id, presence: true
end
