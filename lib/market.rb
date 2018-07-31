class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.map do |vendor|
      if vendor.inventory[item] > 0
        vendor
      end
    end.compact
  end

  def sorted_item_list
    get_item_list.sort
  end

  def get_item_list
    @vendors.map do |vendor|
      vendor.inventory.keys
    end.flatten.uniq
  end

  def total_inventory
    inventory_hash = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.each do |item, quantity|
        inventory_hash[item] += quantity
      end
    end
    inventory_hash
  end

  def sell(item, quantity)
    @vendors.each do |vendor|
      vendor.inventory.each do |name, amount|
        
      end
    end
  end
end
