class SetLanguagesController < ApplicationController

	def set
		if not current_user.present?
			redirect_to root_path, :alert => "You aren't logged in yet, so you can't do that."


		end

	end

	def post

		debugger
	end
end
