class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.belongs_to :post, foreign_key: true, index: true, null: false
      t.belongs_to :user, foreign_key: true, index: true, null: false
      t.string :content, null: false

      t.timestamps
    end
  end
end
