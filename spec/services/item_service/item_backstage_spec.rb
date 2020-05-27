RSpec.describe ItemService::ItemBackstage do
  describe '#next_day!' do
    it 'does call method' do
      item = create :item, item_type: 'backstage', quality: 10, sell_in: 5
      ItemService::ItemBackstage.new(item: item)
    end
  end
end
