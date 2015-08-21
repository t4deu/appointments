class CreateProvidersServices < ActiveRecord::Migration
  def change
    create_table :providers_services, id: false do |t|
      t.belongs_to :provider, index: true
      t.belongs_to :service, index: true
    end
  end
end
