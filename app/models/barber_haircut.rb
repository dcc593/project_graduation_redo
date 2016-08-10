class BarberHaircut < ApplicationRecord
  # Because belongs to user, needs a user_id column in the barber_haircuts table
  belongs_to :user
    # class:  User
    # column: user_id


	has_attached_file :image,
                  styles: { thumb: ["100x100#", :jpg] }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
