class AddTaskToItems < ActiveRecord::Migration
  def change
    add_column :items, :Task, :string
    add_column :items, :description, :text
  end
end
