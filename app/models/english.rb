class English < ApplicationRecord

  belongs_to :user
  attachment :image

  has_many :favorites
def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
end

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true


end
