# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/order_recieved
  def order_recieved
    Notifier.order_recieved
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier/order_shipped
  def order_shipped
    Notifier.order_shipped
  end

end
