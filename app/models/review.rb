class Review < ApplicationRecord
  belongs_to :restaurant # You must check the other side of the relationship
  validates :content, presence: true
end
