class LanguageAndSkillLevel < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :spoken_language

  validates_presence_of :user, :spoken_language, :skill_level

  attr_accessible :skill_level, :user_id, :spoken_language_id

end
