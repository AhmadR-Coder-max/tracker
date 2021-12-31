class Admin::UsersController < Admin::AdminsController
  def index
    @users = User.all.order('created_at desc')
  end
end