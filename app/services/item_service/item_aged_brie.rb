class ItemService::ItemAgedBrie < ItemService::Item
  def initialize(item:)
    raise "Error! Item type is not AGED BRIE" unless item.aged_brie?
    super
  end

  attr_reader :item

  def next_day!
    decrease_sell_in

    increament_quality
    increament_quality if item.sell_in.negative?
  end
end
