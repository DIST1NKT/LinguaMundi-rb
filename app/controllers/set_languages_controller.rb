class SetLanguagesController < ApplicationController

	def set
		if not current_user.present?
			redirect_to root_path, :alert => "You aren't logged in yet, so you can't do that."


		end

	end

	def post
		debugger
		unless current_user.present?
			redirect_to root_path, :alert => "You aren't logged in, so you can't use this feature." and return
		end

		#Find the right language.
		l = LanguageList::LanguageInfo.find(params[:Language])
		lang = SpokenLanguage.where(:name => l.name.force_encoding("UTF-8")).first

		redirect_to :back, :alert => "That language doesn't exist" and return if lang.nil?

		#If language exists:
		current_user.add_language_and_skill_level(lang,params[:skill])
		redirect_to current_user, :notice => "#{lang.name} successfully added to your profile" and return

	end
end
