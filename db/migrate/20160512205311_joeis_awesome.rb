class JoeisAwesome < ActiveRecord::Migration
  def change
  	rename_column :items, :Task, :task
  end
end
