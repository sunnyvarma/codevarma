class Project < ActiveRecord::Base
	validates_presence_of :title, :description
	
	extend FriendlyId
	friendly_id :title, use: :slugged
end
