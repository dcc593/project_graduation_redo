class CreateHaircuts < ActiveRecord::Migration[5.0]
  def change
    create_table :haircuts do |t|
      t.string :cut

      t.timestamps
    end
  end
end
