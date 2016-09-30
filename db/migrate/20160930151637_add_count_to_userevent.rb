class AddCountToUserevent < ActiveRecord::Migration
  def change
    add_column :userevents, :count, :integer
  end
end
