class CreateCharacterClassesSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :character_classes_spells do |t|
      t.references :spell, foreign_key: true
      t.references :character_class, foreign_key: true

      t.timestamps
    end
  end
end
