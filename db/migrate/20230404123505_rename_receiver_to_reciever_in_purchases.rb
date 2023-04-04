class RenameReceiverToRecieverInPurchases < ActiveRecord::Migration[7.0]
  def change
    rename_column :purchases, :receiver, :reciever
  end
end
