class ItemService::ItemBackstage < ItemService::Item
  def initialize(item:)
    raise "Error! Item type is not BACKSTAGE" unless item.backstage?
    super
  end

  attr_reader :item

  def next_day!
    decrease_sell_in

    increament_quality
    increament_quality if @item.sell_in < 11
    increament_quality if @item.sell_in < 6

    zero_quality if @item.sell_in.negative?

    @item.save
  end

  private

  def zero_quality
    @item.quality = 0
  end
end
