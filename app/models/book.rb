class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true
  validates :title, length: { in: 1..25 }
end
