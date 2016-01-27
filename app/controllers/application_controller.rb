class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  serialization_scope :current_user

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end

  def user_params
    params.require(:user).permit(:name, :email, :login)
  end

end
