class AddEnglishIdToEnglishes < ActiveRecord::Migration[5.2]
  def change
    add_column :englishes, :english_id, :integer
  end
end
