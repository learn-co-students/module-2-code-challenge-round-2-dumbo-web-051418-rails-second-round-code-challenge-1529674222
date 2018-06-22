class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor
  validates :sweet, uniqueness: true
  validates :comment, presence: true
  validates :vendor, presence: true
end
