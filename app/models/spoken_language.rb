class SpokenLanguage < ActiveRecord::Base
  attr_accessible :flag, :name

  has_and_belongs_to_many :users
end
