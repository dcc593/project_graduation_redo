class BarberHaircut < ApplicationRecord

	has_attached_file :image,
                  styles: { thumb: ["100x100#", :jpg] }
end
