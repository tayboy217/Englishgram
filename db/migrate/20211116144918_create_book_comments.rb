class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
       t.integer :user_id
       t.integer :english_id
       t.string  :content

      t.timestamps
    end
  end
end
