RSpec.describe ItemService::All do
  before(:each) do
    create :item
  end

  describe '.next_day!' do
    it 'does call method' do
      ItemService::All.next_day!
    end
  end
end
