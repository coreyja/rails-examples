class AddMissingPostUserFk < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key 'posts', 'users'
  end
end
