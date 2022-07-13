class OrderedItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :menu_item
    has_one :item, :through => :menu_item

end 