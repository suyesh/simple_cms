class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible
      t.integer :subject_id

      t.timestamps
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end
end
