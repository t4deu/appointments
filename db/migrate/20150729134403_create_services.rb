class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.belongs_to :venue
      t.string :name, null: false
      t.text :description
      t.integer :duration
      t.decimal :price, null: false, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
