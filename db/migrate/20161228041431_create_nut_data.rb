class CreateNutData < ActiveRecord::Migration[5.0]
  def change
    create_table :nut_data do |t|
      t.string :ndb_no
      t.string :nutr_no
      t.decimal :nutr_val, precision: 10, scale: 3
      t.integer :num_data_pts
      t.decimal :std_error, precision: 8, scale: 3
      t.string :src_cd
      t.string :deriv_cd
      t.string :ref_ndb_no
      t.string :add_nutr_mark
      t.integer :num_studies
      t.decimal :min, precision: 10, scale: 3
      t.decimal :max, precision: 10, scale: 3
      t.integer :df
      t.decimal :low_eb, precision: 10, scale: 3
      t.integer :stat_cmt

      t.timestamps
    end
  end
end
