class LineItem < ActiveRecord::Base
	
	belongs_to :order
	belongs_to :product
	belongs_to :cart
 	
 	def total_price
    
@cart.to_a.sum(&:total_price)    
    end
def remove_item
     @cart = find_cart
     @cart.remove_line_item(params[:id])
   end
end
