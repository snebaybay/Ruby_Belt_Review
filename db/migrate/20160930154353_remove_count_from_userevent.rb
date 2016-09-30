class RemoveCountFromUserevent < ActiveRecord::Migration
  def change
    remove_column :userevents, :count, :integer
  end
end
