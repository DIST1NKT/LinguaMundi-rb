class AddLanguageAndSkillLevelsTable < ActiveRecord::Migration
  def up
  	create_table :language_and_skill_levels do |t|
  		t.integer :user_id, :null => false
  		t.integer :spoken_language_id, :null => false
  		t.integer :skill_level, :null => false
  		t.timestamps
  	end
  end

  def down
  	drop_table :language_and_skill_levels
  end
end
