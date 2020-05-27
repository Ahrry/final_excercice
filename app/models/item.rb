class Item < ApplicationRecord
  ITEM_TYPES = %w[default aged_brie backstage sulfura].freeze

  validates :name, presence: true
  validates :item_type, presence: true, inclusion: { in: ITEM_TYPES }
  validates :sell_in, presence: true
  validates :quality, presence: true
end
