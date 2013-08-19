class AddSkillLevelToLanguageAndSkillLevel < ActiveRecord::Migration
  def change
    add_column :language_and_skill_levels, :skill_level, :number
  end
end
