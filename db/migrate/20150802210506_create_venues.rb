class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name, null: false
      t.string :state, limit: 2
      t.string :city
      t.string :zip, limit: 8
      t.string :address
      t.string :email
      t.string :phone, limit: 20
      t.string :cellphone, limit: 20
      t.string :zapzap, limit: 20

      t.timestamps null: false
    end
  end
end
