class CreatePoems < ActiveRecord::Migration[7.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :author
      t.jsonb :lines, array: true, default:[]
      t.integer :linecount
      t.string :notes

      t.timestamps
    end
  end
end
