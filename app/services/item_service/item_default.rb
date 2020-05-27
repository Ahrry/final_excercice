class ItemService::ItemDefault
  def initialize(item:)
    raise "Error! Item type is not DEFAULT" unless item.default?
    @item = item
  end

  attr_reader :item

  def next_day!
    increament_quality
    increament_quality if @item.sell_in.negative?
    @item.save
  end

  private

  def increament_quality
    @item.quality += 1 if @item.quality < 50
  end
end
