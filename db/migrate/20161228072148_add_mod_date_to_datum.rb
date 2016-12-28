class AddModDateToDatum < ActiveRecord::Migration[5.0]
  def change
    add_column :data, :addmod_date, :string
  end
end
