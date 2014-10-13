class CreateStatSheets < ActiveRecord::Migration
  def change
    create_table :stat_sheets do |t|
      t.integer :hp
      t.integer :sp
      t.integer :attack
      t.integer :defense
      t.integer :speed

      t.timestamps null: false
    end
  end
end
