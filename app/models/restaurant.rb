class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # to make sure all the reviews
  # get destroyed when you destroy a restaurant
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true
  validates_associated :reviews
end
