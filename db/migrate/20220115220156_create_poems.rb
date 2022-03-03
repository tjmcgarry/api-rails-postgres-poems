class CreatePoems < ActiveRecord::Migration[7.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :author
      t.jsonb :lines, array: true, default:[]
      t.integer :linecount
      t.integer :text_characters
      t.float :score
      t.string :label
      t.float :sadness
      t.float :joy
      t.float :fear
      t.float :disgust
      t.float :anger 

      t.timestamps
    end
  end
end
