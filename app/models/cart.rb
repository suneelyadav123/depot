class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
	 def add_product(product_id, product_price)
     @product = Product.find(product_id)
     current_item = line_items.where(:product_id => product_id).first
    	if current_item
      		current_item.quantity =+ 1
    	else
      		  current_item = line_items.build(product_id: product_id, :price => product_price)
      line_items << current_item
    	end
    	current_item
  	end


     def total_price
      line_items.to_a.sum(&:price) 

     end
 # serialize :notification_params, Hash
 #  def paypal_url(return_url)
 #    values = {
 #        :business => 'sunny.bunny225-buyer@gmail.com',
 #        :cmd => 'cart',
 #        upload: 1,
 #        :return => return_url,
 #        invoice: id,
        
 #        notify_url: "#{Rails.application.secrets.app_host}/hook"
 #    }
    
  # line_items.each_with_index do |item, index| 
  # values.merge!
  # (
  # {
  #  “amount #{index+1} ” => item.product.price , 
  # “item_name#{index+1}” => item.product.name, 
  # “item_number_#{index+1}” => item.product.id, 
  # “quantity_#{index+1}” => item.quantity 
  # }
  # )

  #  end 
 #   “https://www.sandbox.paypal.com/cgi-bin/webscr?” + values.to_query 
 # end
#end   
     def remove_cart_item(id)
     if @items.delete_if {|item| item.id == id.to_i }
       true
     else
       false
     end
   end
end
