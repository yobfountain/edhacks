class HackersController < ApplicationController

	def create
		@hacker = Hacker.create(params.require(:hacker).permit(:email))
		if @hacker
			redirect_to thanks_path
		end
	end
end