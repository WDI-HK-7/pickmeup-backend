class Users::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  respond_to :json
  def create

    user = User.new(sign_up_params)
    if user.save
      render :json => user.as_json(:email => user.email), :status => 201
      return
    else
      warden.custom_failure!
      render :json => user.errors, :status=>422
    end
  end

  private

  # post_params comes from the Post.new(post_params) from def create
  def sign_up_params
    # params.require(:post).permit(:pulocation, :putime, :pudate, :destination, :delitime, :contactnum)
    params.require(:user).permit(:username, :contactnum, :email, :password)
  end

end