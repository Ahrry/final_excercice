RSpec.describe ItemService::ItemAgedBrie do
  describe '#next_day!' do
    it 'deos call method' do
      item = create :item, item_type: 'aged_brie', quality: 10, sell_in: 5
      ItemService::ItemAgedBrie.new(item: item).next_day!
    end
  end
end
