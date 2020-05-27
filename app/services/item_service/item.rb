class ItemService::Item
  def initialize(item:)
    @item = item
  end

  attr_reader :item

  def next_day!
    module_name = 'ItemService'
    class_name = "item_#{@item.item_type}".camelcase

    "#{module_name}:#{class_name}".constantize.new(@item).next_day!
  end
end
