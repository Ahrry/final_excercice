class Item < ApplicationRecord
  validates :name, presence: true
  validates :item_type, presence: true
  validates :sell_in, presence: true
  validates :quality, presence: true

  enum item_type: {
    default: 'default',
    aged_brie: 'aged_brie' ,
    backstage: 'backstage',
    sulfura: 'sulfura',
    conjured: 'conjured'
  }
end
