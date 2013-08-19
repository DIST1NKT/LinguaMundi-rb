class CreateLanguageAndSkillLevels < ActiveRecord::Migration
  def change
    create_table :language_and_skill_levels do |t|

      t.timestamps
    end
  end
end
