class Order < ActiveRecord::Base
    belongs_to :restaurant
    has_many :ordered_items
    
    def self.get_open_order
        Order.where("is_completed == ?", false).first
    end

    def self.get_open_order_items
        Order.get_open_order.ordered_items
    end
end 