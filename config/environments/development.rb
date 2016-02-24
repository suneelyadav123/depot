Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
 config.action_mailer.perform_deliveries = true
    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load
  config.action_mailer.delivery_method = :smtp
   config.action_mailer.default :charset => "utf-8"
   config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => "gmail.com",
      :user_name            => "dsuneelyadav@gmail.com",
      :password             => "suneelyadav",
      :authentication       => :plain,
      :enable_starttls_auto => true,
      :openssl_verify_mode => 'none'
    }

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true


#   config.after_initialize do  
#    ActiveMerchant::Billing::Base.mode = :test 
#           
#          ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new
#           (  
#               login: "sunny.bunny225-facilitator_api1.gmail.com",  
#             password: "GLGT3MHXWXPERMQJ",  
#             signature: "AeubRpaWIWBspVPEVYlelYZIXhmHAa-fa1fdz6PT2tCbxOfoDi2Tdv90"  
#          )  

 
#   end
#   end

# ::EXPRESS_GATEWAY = ActiveMerchant::Billing::PaypalExpressGateway.new(paypal_options)
# end

  # Raises error for missing translations  # config.action_view.raise_on_missing_translations = true
# equire 'paypal-sdk-rest'
# include PayPal::SDK::REST
# PayPal::SDK.configure({
#   :mode => "sandbox",
#   :client_id => "AQkquBDf1zctJOWGKWUEtKXm6qVhueUEMvXO_-MCI4DQQ4-LWvkDLIN2fGsd",
#   :client_secret => "EL1tVxAjhT7cJimnz5-Nsx9k2reTKSVfErNQF-CmrwJgxRtylkGTKlU4RvrX"
# })

#   @order = paypal_url::SDK::REST::Order.new({
#   :intent => "sale",
#   :payer => {
#     :payment_method => "paypal" },
#   :redirect_urls => {
#     :return_url => "https://devtools-paypal.com/guide/pay_paypal/ruby?success=true",
#     :cancel_url => "https://devtools-paypal.com/guide/pay_paypal/ruby?cancel=true" },
#   :transactions => [ {
#     :amount => {
#       :total => "12",
#       :currency => "USD" },
#     :description => "creating a payment" } ] } )

#  @order.create
end
# end
