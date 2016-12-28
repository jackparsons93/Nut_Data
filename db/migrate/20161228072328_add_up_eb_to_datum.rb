class AddUpEbToDatum < ActiveRecord::Migration[5.0]
  def change
    add_column :data, :up_eb, :decimal
  end
end
