class Restaurant < ApplicationRecord
  CATEGORIES = %W(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
