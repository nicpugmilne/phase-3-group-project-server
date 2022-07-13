class Order < ActiveRecord::Base
    belongs_to :restaurant
    has_many :ordered_items
    
    def self.get_open_order_items
        Order.where("is_completed == ?", false).first.ordered_items
    end
end 