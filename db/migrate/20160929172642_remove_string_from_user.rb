class RemoveStringFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :string, :string
  end
end
