class ItemService::Item
  def initialize(item:, drunk_mode: false)
    @item = item
    @drunk_mode = drunk_mode
  end

  attr_reader :item

  def next_day!
    module_name = 'ItemService'
    class_name = "item_#{@item.item_type}".camelcase

    "#{module_name}::#{class_name}".constantize.new(item: @item).next_day!

    compute_price

    @item.save
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

  def compute_price
    return if @item.sell_in.positive?

    @item.price = @item.price - ( @item.price * 0.2 )
  end

  def compute_name
    return unless drunk_mode

    @item.name = @item.name.upcase.gsub(' ', '_')
  end

  def force
    1
  end
end
