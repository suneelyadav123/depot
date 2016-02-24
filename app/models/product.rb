class Product < ActiveRecord::Base
	# default_scope :order => 'title'
has_many :line_items
has_many :orders
before_destroy :ensure_not_referenced_by_any_line_item
def ensure_not_referenced_by_any_line_item
if line_items.count.zero?
return true
else
errors[:base] << "Line Items present"
return false
end
end	
   def total_price
 		cart_items.to_a.sum { |item| item.sub_total }
 	end

 	
   def self.remove(quantity)
    @quantity = quantity - 1
  end
validates :title , :uniqueness => true
validates :description , presence:true
validates :image_url , presence:true
validates :price , :numericality => {:greater_than_or_equal_to => 0.01}
end
