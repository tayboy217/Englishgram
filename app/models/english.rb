class English < ApplicationRecord
  
  belongs_to :user
  attachment :image
end
