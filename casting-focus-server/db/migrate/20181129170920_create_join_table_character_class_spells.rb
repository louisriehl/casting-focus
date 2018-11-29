class CreateJoinTableCharacterClassSpells < ActiveRecord::Migration[5.2]
  def change
    create_join_table :character_classes, :spells do |t|
      # t.index [:character_class_id, :spell_id]
      # t.index [:spell_id, :character_class_id]
    end
  end
end
