class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :body
      t.string :img_url
      t.integer :place_id

      t.timestamps
    end
  end
end
