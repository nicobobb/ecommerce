class EmailsController < ApplicationController
  def create
  	@email = MailList.new(email: params[:email])
  	if @email.save
  	 render json: @email
  	else
  	 render json: @email.errors, status: :unprocessable_entity
    end
  end
end
