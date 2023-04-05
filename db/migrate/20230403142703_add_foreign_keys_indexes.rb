class AddForeignKeysIndexes < ActiveRecord::Migration[7.0]
  def change
    add_reference :purchases, :user, foreign_key: true
    add_reference :purchases, :group, foreign_key: true
    add_reference :groups, :user, foreign_key: true
  end
end
