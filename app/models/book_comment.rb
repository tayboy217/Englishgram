class BookComment < ApplicationRecord
  belongs_to :user  #Comment.userでコメントの所有者を取得
  belongs_to :english
end
