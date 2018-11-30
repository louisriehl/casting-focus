class CreateSpellKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_klasses do |t|
      t.references :spell, foreign_key: true
      t.references :klass, foreign_key: true

      t.timestamps
    end
  end
end
