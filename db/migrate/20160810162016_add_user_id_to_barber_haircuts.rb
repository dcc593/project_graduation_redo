class AddUserIdToBarberHaircuts < ActiveRecord::Migration[5.0]
  def change
    add_column :barber_haircuts, :user_id, :integer
  end
end
