require "rubygems"
require "active_merchant"

ActiveMerchant::Billing::Base.mode = :test


gateway = ActiveMerchant::Billing::PaypalGateway.new 

{

	:login     => "sunny.bunny225-facilitator_api1.gmail.com" ,
	:password  => "A5QZ8KXMVLMU8E36" , 
	:signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31AKaskgqbZMvAlq0Kin6o33coVp27"

}

credit_card ActiveMerchant::Billing::CreditCard.new

{

	:type              => "visa" , 
	:number 			=> "4024007148673576",
	:verification_value => "123",
	:month              => 1,
	:year				=> Time.now.year+1,
	:first_name			=> "Ryan" ,
	:last_name 			=> "Bates"

}

if credit_card.valid?

	response = gateway.authorize(1000 , credit_card, :ip => "127.0.0.1")

if response.success?
	puts" purchase complete "

else
	puts "Error : #{response.message}"

end

else
	puts "credit card is invalid. #{credit_card.errors.full_messages.join( ' . ')}"
end