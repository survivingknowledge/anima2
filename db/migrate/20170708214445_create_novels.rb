class CreateNovels < ActiveRecord::Migration[5.1]
  def change
    create_table :novels do |t|
      t.string :name
      t.string :description
      t.string :author
      t.string :status
      t.datetime :release_date
      t.timestamps
    end
  end
end
