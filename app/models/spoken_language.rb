class SpokenLanguage < ActiveRecord::Base
  attr_accessible :flag, :name, :iso_639_1_code

  has_and_belongs_to_many :users

  has_many :language_and_skill_levels
  has_many :users, :through => :language_and_skill_levels
end
