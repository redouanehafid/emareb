class Application < ApplicationRecord

	has_attached_file :cv
	validates_attachment :cv, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
	
	has_attached_file :lettre
	validates_attachment :lettre, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

end
