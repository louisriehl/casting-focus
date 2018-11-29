class CreateClassDs < ActiveRecord::Migration[5.2]
  def change
    create_table :class_ds do |t|
      t.string :name

      t.timestamps
    end
  end
end
