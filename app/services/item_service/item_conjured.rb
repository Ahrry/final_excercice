class ItemService::ItemConjured < ItemService::Item
  def initialize(item:)
    raise "Error! Item type is not CONJURED" unless item.conjured?
    super
  end

  attr_reader :item

  protected

  def force
    2
  end
end
