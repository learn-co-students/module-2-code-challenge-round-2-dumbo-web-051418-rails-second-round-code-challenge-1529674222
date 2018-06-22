class AddCommentsToVendors < ActiveRecord::Migration[5.1]
  def change
    add_column :vendors, :comment, :string
  end
end
