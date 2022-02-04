class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :patient
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
