class Project < ActiveRecord::Base
	validates_presence_of :title, :description
	
	mount_uploader :image, ImageUploader
	
	extend FriendlyId
	friendly_id :title, use: :slugged
end
