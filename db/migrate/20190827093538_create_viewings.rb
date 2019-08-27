class CreateViewings < ActiveRecord::Migration[5.2]
  def change
    create_table :viewings do |t|
      t.references :user, foreign_key: true
      t.references :attendance, foreign_key: true
      t.boolean :like

      t.timestamps
    end
  end
end
