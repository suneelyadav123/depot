class RegistrationController < Devise::RegistrationsController

	def new

		@member= Member.new
	end

	def create

		@member = Member.new
		@member.username = params[:member][:username]
		@member.email = params[:member][:email]
		@member.password = params[:member][:password]
		@member.password_confirmation =params[:member][:password_confirmation]


		if @member.errors.blank?

			@member.save

			redirect_to dashboard_path
		else
			render :action => "new"
		end
	end


private
	def member_params
      params.require(:member).permit(:username, :email, :password, :password_confirmation , )

    end

end

end