class CreateRegMonths < ActiveRecord::Migration
  def change
    create_table :reg_months do |t|
      t.integer :region_id
      t.integer :month_id
      t.integer :quantity
      t.integer :total
      t.float :pecchange
      t.float :marketshare

      t.timestamps null: false
    end
  end
end
