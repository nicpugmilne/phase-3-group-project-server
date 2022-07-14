class Order < ActiveRecord::Base
    belongs_to :restaurant
    has_many :ordered_items
    
    def self.get_open_order
        Order.where("is_completed == ?", false).first
    end

    def self.get_open_order_items
        Order.get_open_order.ordered_items
    end

    def self.get_open_order_total_cost
        prices = Order.get_open_order_items.map do |item|
            item.menu_item.price * item.quantity
        end
        prices.sum
    end
end 