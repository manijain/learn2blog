class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.boolean :is_visible
      t.boolean :is_published
      t.date :publish_at
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
