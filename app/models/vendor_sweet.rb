class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :comment, presence: true
  # also need to make sure to validate sweet
  # also need to make sure sweet uniqueness is true
end
