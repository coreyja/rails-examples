class CreatePosts < ActiveRecord::Migration[4.2]
  def change
    create_table :posts, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, foreign_key: true, index: true, null: false
      t.string :title, null: false
      t.string :content, null: false
      t.string :tags, array: true, default: []
      t.datetime :visibile_as_of, null: true

      t.timestamps null: false
    end
  end
end
