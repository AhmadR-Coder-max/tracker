class Admin::UsersController < Admin::AdminsController
  def index
    @users = User.all.order('admin desc')
  end
end
