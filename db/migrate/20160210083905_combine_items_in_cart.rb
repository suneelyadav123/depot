class CombineItemsInCart < ActiveRecord::Migration
  def change
  Cart.all.each do |cart|
# count the number of each product in the cart
sums = cart.line_items.group(:product_id).sum(:quantity)
sums.each do |product_id, quantity|
if quantity > 1
# remove individual items
cart.line_items.where(:product_id=>product_id).delete_all
# replace with a single item
cart.line_items.create(:product_id=>product_id, :quantity=>quantity)
end
end
end
LineItem.where("quantity>1" ).each do |lineitem|
# add individual items
lineitem.quantity.times do
LineItem.create :cart_id=>lineitem.cart_id,
:product_id=>lineitem.product_id, :quantity=>1
end
lineitem.destroy
end

  end
end
