class CreatePosts < ActiveRecord::Migration[4.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, null: false
      t.string :title, null: false
      t.string :content, null: false
      t.string :tags, array: true, default: []
      t.datetime :visibile_as_of, null: true

      t.timestamps
    end
  end
end
