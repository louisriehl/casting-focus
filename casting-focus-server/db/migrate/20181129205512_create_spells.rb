class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :level
      t.text :desc
      t.text :higher_level
      t.string :page
      t.string :range
      t.string :components
      t.string :material
      t.boolean :ritual
      t.string :duration
      t.boolean :concentration
      t.string :casting_time
      t.string :school

      t.timestamps
    end
  end
end
