class RemoveCountFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :count, :integer
  end
end
