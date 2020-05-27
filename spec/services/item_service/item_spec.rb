RSpec.describe ItemService::Item do
  describe '#next_day!' do
    it 'deos call method' do
      item = create :item
      ItemService::Item.new(item: item).next_day!
    end
  end
end
