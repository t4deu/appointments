class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.belongs_to :provider
      t.time :start_hour
      t.time :end_hour

      #week day
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.boolean :sun

      t.timestamps null: false
    end
  end
end
