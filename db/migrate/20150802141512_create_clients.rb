class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :email
      t.string :phone, limit: 20
      t.string :cellphone, limit: 20
      t.string :zapzap, limit: 20

      t.timestamps null: false
    end
  end
end
