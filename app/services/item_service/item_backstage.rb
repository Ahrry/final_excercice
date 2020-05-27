class ItemService::ItemBackstage
  def initialize(item:)
    raise "Error! Item type is not BACKSTAGE" unless item.backstage?
    @item = item
  end

  attr_reader

  def next_day!
    increament_quality
    increament_quality if @item.sell_in < 11
    increament_quality if @item.sell_in < 6

    zero_quality if @item.sell_in.negative?

    @item.save
  end

  private

  def increament_quality
    @item.quality += 1 if @item.quality < 50
  end

  def zero_quality
    @item.quality = 0
  end
end
