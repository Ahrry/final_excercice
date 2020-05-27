FactoryBot.define do
  factory :item do
    sequence(:name, 1) { |n| "Item #{n}" }
    item_type { 'default' }
    sell_in { 1 }
    quality { 10 }
    price { 100 }
  end
end
