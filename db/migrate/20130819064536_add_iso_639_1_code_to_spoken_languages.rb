class AddIso6391CodeToSpokenLanguages < ActiveRecord::Migration
  def change
    add_column :spoken_languages, :iso_639_1_code, :string
  end
end
