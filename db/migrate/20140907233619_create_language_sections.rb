class CreateLanguageSections < ActiveRecord::Migration
  def change
    create_table :language_sections do |t|
      t.string :language
      t.string :section
      t.text :info

      t.timestamps
    end
  end
end
