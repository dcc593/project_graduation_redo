class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :time
      t.integer :booking
      t.integer :barber_id

      t.timestamps
    end
  end
end
