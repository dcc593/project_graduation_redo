class AddAttachmentImageToBarberHaircuts < ActiveRecord::Migration
  def self.up
    change_table :barber_haircuts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :barber_haircuts, :image
  end
end
