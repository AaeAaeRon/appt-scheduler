class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.string :c_name
      t.integer :pro_id
      t.string :pro_name
      t.integer :service_id
      t.integer :price
      t.string :startDate
      t.string :endDate
      t.string :title, :default => :null
      t.boolean :allDay, :default => false
      t.integer :duration, :default => 60
      t.boolean :canceled, :default => false
      t.string :cancelation_reason, :default => :null

      t.timestamps
    end
  end
end
