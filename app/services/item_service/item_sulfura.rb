class ItemService::ItemDefault < ItemService::Item
  def initialize(item:)
    raise "Error! Item type is not SULFURA" unless item.sulfura?
    super
  end

  attr_reader :item

  def next_day!
    nil
  end
end
