class ItemService::ItemAgedBrie
  def initialize(item:)
    raise "Error! Item type is not AGED BRIE" unless item.aged_brie?
    @item = item
  end

  attr_reader :item

  def next_day!
    decrease_sell_in

    increament_quality
    increament_quality if item.sell_in.negative

    @item.save
  end

  private

  def increament_quality
    @item.quality += 1 if @item.quality < 50
  end

  def deacrease_quality
    @item.quality -= 1 if @item.quality.positive?
  end

  def decrease_sell_in
    item.sell_in -= 1
  end
end
