class ItemService::ItemDefault
  def initialize(item:)
    raise "Error! Item type is not SULFURA" unless item.sulfura?
    @item = item
  end

  attr_reader :item

  def next_day!
  end
end
