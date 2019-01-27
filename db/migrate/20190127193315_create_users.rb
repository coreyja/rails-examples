class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, index: { unique: true }, null: false
      t.boolean :admin, default: false, null: false

      t.timestamps
    end
  end
end