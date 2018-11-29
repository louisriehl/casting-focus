class CreateSpellClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_classes do |t|
      t.references :spell, foreign_key: true
      t.references :characterclass, foreign_key: true

      t.timestamps
    end
  end
end
