RSpec.describe ItemService::ItemBackstage do
  describe '#next_day!' do
    it 'does increament +3 the quality' do
      item = create :item, item_type: 'backstage', quality: 10, sell_in: 5
      item_backstage = ItemService::ItemBackstage.new(item: item)

      item_backstage.next_day!
      expect(item.reload.quality).to eq (13)
    end

    it 'does increament +2 the quality' do
      item = create :item, item_type: 'backstage', quality: 10, sell_in: 7
      item_backstage = ItemService::ItemBackstage.new(item: item)

      item_backstage.next_day!
      expect(item.reload.quality).to eq (12)
    end

    it 'does increament +1 the quality' do
      item = create :item, item_type: 'backstage', quality: 10, sell_in: 12
      item_backstage = ItemService::ItemBackstage.new(item: item)

      item_backstage.next_day!
      expect(item.reload.quality).to eq (11)
    end

    it 'does set the quality to 0' do
      item = create :item, item_type: 'backstage', quality: 10, sell_in: -1
      item_backstage = ItemService::ItemBackstage.new(item: item)

      item_backstage.next_day!
      expect(item.reload.quality).to eq (0)
    end

    it 'does not increament the quality' do
      item = create :item, item_type: 'backstage', quality: 50, sell_in: 1
      item_default = ItemService::ItemBackstage.new(item: item)

      item_default.next_day!
      expect(item.reload.quality).to eq (50)
    end
  end
end
