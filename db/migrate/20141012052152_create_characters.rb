class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :job
      t.belongs_to :party, index: true

      t.timestamps null: false
    end
  end
end
