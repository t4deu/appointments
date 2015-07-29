class CreateServicesProviders < ActiveRecord::Migration
  def change
    create_table :services_providers, id: false do |t|
      t.belongs_to :service, index: true
      t.belongs_to :provider, index: true
    end
  end
end
