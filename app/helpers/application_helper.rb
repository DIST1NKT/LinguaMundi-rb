module ApplicationHelper

	def convert_skill_to_words skill
		case skill
		when 0
			"Beginner"
		when 100
			"Intermediate"
		when 200
			"Advanced"
		when 300
			"Fluent"
		when 400
			"Mother Tongue"
		end
	end

end
