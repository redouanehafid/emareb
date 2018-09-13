class Project < ApplicationRecord
	has_attached_file :image, styles: { medium: "1024x780>", thumb: "480x340" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
