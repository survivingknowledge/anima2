class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :content
      t.string :title
      t.integer :chapter_number
      t.integer :user_id
      t.integer :novel_id
      t.string :status, default: 'unpublished'
      t.timestamps
    end
  end
end
