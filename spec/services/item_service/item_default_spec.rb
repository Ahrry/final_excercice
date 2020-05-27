RSpec.describe ItemService::ItemDefault do
  describe '#next_day!' do
    it 'does increament +2 the quality' do
      item = create :item, quality: 10, sell_in: -1
      item_default = ItemService::ItemDefault.new(item: item)

      item_default.next_day!
      expect(item.reload.quality).to eq (12)
    end

    it 'does decrease -1 the quality' do
      item = create :item, quality: 50, sell_in: -1
      item_default = ItemService::ItemDefault.new(item: item)

      item_default.next_day!
      expect(item.reload.quality).to eq (49)
    end

    it 'does not increament the quality' do
      item = create :item, quality: 50, sell_in: 1
      item_default = ItemService::ItemDefault.new(item: item)

      item_default.next_day!
      expect(item.reload.quality).to eq (50)
    end
  end
end
