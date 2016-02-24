class Order < ActiveRecord::Base
 
has_many :line_items, :dependent => :destroy
  PAYMENT_TYPES = [  "Credit card", "Debit card" ]
  # ...
  #validates  :email, :number, :presence => true
  # validates :pay_type, :inclusion => PAYMENT_TYPES

  has_many :line_items, :dependent => :destroy


  serialize :notification_params, Hash
  def paypal_url(return_path  )
    values = {
        business: "sunny.bunny225-facilitator-2@gmail.com",
        cmd: "_cart",
        upload: 1 ,
        amount: 7, 
      
        return: "#{Rails.application.secrets.app_host}#{return_path}" ,
         
        # item_name: product.name,
        # item_number: product.id,
        # quantity: '1',
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end