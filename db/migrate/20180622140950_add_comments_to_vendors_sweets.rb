class AddCommentsToVendorsSweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendors_sweets, :comment, :string
  end
end
