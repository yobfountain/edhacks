class HackersController < ApplicationController

	def create
		@hacker = Hacker.create!(params.require(:hacker).permit(:email))
		cookies[:signup] = {
			value: true,
			expires: 3.months.from_now
		}
		flash[:notice] = "Thanks! Your email has been recorded. We'll contact you later with more details."
		# render 'home/index'
		redirect_to root_path
	end
end
