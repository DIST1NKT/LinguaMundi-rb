class LanguageAndSkillLevel < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :spoken_language

  attr_accessible :skill_level

end
