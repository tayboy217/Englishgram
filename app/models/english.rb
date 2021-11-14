class English < ApplicationRecord

  belongs_to :user
  attachment :image

  has_many :likes

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true


end
