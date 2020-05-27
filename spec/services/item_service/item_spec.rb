RSpec.describe ItemService::Item do
  before(:each) do
    @item = create :item
  end

  describe '#next_day!' do
    it 'deos call method' do
      ItemService::Item.new(item: @item).next_day!
    end
  end
end
