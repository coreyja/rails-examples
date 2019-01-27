class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments, id: :uuid do |t|
      t.belongs_to :post, type: :uuid, foreign_key: true, index: true, null: false
      t.belongs_to :user, type: :uuid, foreign_key: true, index: true, null: false
      t.string :content, null: false

      t.timestamps null: false
    end
  end
end
