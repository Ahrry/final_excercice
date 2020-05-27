class ItemService::ItemDefault < ItemService::Item
  def initialize(item:)
    raise "Error! Item type is not DEFAULT" unless item.default?
    super
  end

  attr_reader :item

  def next_day!
    decrease_sell_in

    deacrease_quality
    deacrease_quality if @item.sell_in.negative?
  end
end
