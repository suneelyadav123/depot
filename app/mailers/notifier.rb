class Notifier < ApplicationMailer

  default from: 'dsuneelyadav@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_recieved.subject
  #
  def order_received(order)
@order = order
mail :to => order.email, :subject => 'Sedin Online Store Order Confirmation'
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped
    @greeting = "Hi"

    mail :to => order.email , :subject => 'Congratulations Your Order is Succesfully Shipped..... Thanks for Shopping with us!!!!!'
  end
end
