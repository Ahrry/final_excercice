RSpec.describe ItemService::ItemDefault do
  describe '#next_day!' do
    it 'does call method' do
      item = create :item, item_type: 'default', quality: 10, sell_in: -1
      ItemService::ItemDefault.new(item: item)
    end
  end
end
