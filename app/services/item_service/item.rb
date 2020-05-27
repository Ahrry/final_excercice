class ItemService::Item
  def initialize(item:)
    @item = item
  end

  attr_reader :item

  def next_day!
    module_name = 'ItemService'
    class_name = "item_#{@item.item_type}".camelcase

    "#{module_name}::#{class_name}".constantize.new(item: @item).next_day!
  end

  protected

  def increament_quality
    @item.quality += 1 if @item.quality < 50
  end

  def deacrease_quality
    @item.quality -= 1 if @item.quality.positive?
  end

  def decrease_sell_in
    item.sell_in -= (1 * force)
  end

  def force
    1
  end
end
