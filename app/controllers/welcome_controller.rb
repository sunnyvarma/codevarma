class WelcomeController < ApplicationController

	def index
		@posts = Post.all.limit(3).order("updated_at desc")
		@projects = Project.all.limit(3).order("updated_at desc")
	end

end
