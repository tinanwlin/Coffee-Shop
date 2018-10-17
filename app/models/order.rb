class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  monetize :total_cents, numericality: true
end
