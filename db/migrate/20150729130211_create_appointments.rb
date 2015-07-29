class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :client
      t.belongs_to :provider
      t.belongs_to :service
      t.datetime :start_at
      t.datetime :end_at
      t.text :notes

      t.timestamps null: false
    end
  end
end
