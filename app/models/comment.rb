class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  validates :text, presence: true, length: { maximum: 255 }
end
