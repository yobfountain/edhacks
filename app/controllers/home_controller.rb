class HomeController < ApplicationController

	def index
		@hacker = Hacker.new
	end

end
