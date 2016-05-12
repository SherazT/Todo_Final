class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :lists, :item, :string
  end
end
