class AddtaskToItems < ActiveRecord::Migration
  def change
    add_column :items, :task, :string
    add_column :items, :description, :text
  end
end
