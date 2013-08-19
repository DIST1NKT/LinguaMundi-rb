# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

all_languages = LanguageList::ALL_LANGUAGES


for lang in all_languages
	SpokenLanguage.create(:name => lang.name.force_encoding("UTF-8"))
	puts "Added " + lang.name.force_encoding("UTF-8")
end