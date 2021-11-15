class AddEnglishIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :english_id, :integer
  end
end
