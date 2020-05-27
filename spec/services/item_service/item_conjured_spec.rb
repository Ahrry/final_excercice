RSpec.describe ItemService::ItemConjured do
  describe '#next_day!' do
    it 'does call method' do
      item = create :item, item_type: 'conjured', quality: 10, sell_in: 5
      item_backstage = ItemService::ItemConjured.new(item: item)
    end
  end
end
