class RemoveFieldNameFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :completed, :boolean
  end
end
