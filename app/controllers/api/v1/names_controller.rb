module Api::V1
  class NamesController < Api::V1::ApplicationController
    before_action :authenticate

    # GET /names
    def index
      @names = Name.filter(params.slice(:gender))
      render status: 200, json: @names
    end

    protected
    def authenticate
      user_email = params[:user_email].presence
      user       = user_email && User.find_by_email(user_email)
      # Notice how we use Devise.secure_compare to compare the token
      # in the database with the token given in the params, mitigating
      # timing attacks.
      if user && Devise.secure_compare(user.authentication_token, params[:user_token])
        user = User.find_by_email(user_email)
        return true
      else
        render :json => '{"success" : "false"}'
      end
    end

  end
end

