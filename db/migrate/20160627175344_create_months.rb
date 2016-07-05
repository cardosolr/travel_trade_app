class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :name
      t.integer :year_id

      t.timestamps null: false
    end
  end
end
