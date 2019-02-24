class AddIndexToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_index :favorites, [:user_id, :micropost_id], :unique => true
  end
end
