class CreateBarberHaircuts < ActiveRecord::Migration[5.0]
  def change
    create_table :barber_haircuts do |t|
      t.string :haircut

      t.timestamps
    end
  end
end
