class AddReceiverToPurchases < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :receiver, :string unless column_exists?(:purchases, :receiver)
  end
end
