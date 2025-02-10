class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :category, presence: true
  # validates :phone_number, presence: true, format: { with: /\A(\+\d{1,3}[- ]?)?\d{10}\z/, message: "format invalide" }
  validates :category, inclusion: { in: CATEGORIES }
end
