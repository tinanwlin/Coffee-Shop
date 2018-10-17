class Product < ApplicationRecord
  before_save :normalize_name, on: :create
  has_many :order_items

  monetize :price_cents, numericality: true

  validates :name, :price, presence: true

  private
    def normalize_name
      self.name = name.upcase
    end
end
