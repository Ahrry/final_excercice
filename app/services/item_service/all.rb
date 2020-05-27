module ItemService::All
  def self.next_day!
    Item.all.each do |item|
      ItemService::Item.new(item: item).next_day!
    end
  end
end
