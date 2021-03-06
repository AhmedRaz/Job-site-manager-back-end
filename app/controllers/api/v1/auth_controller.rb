class Api::V1::AuthController < ApplicationController


  def login
    @user = User.find_by(email_address: params[:email_address])
    if @user && @user.authenticate(params[:password])
      render json: { token: issue_token({ id: @user.id }) }
    else
      render json: { error: "Authentication Failed" }, status: 401
    end
  end

  def get_current_user

    render json: current_user
  end
end
