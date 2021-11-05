class English < ApplicationRecord

  belongs_to :user
  attachment :image


  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true


end
