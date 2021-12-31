class Admin::AdminsController < ActionController::Base
  layout 'admin'
  before_action :masquerade_user!
  before_action :authenticate_admin?

  private
  def authenticate_admin?
    redirect_to root_path unless user_signed_in? && current_user.admin?
  end
end