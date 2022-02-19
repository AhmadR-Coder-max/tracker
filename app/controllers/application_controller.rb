class ApplicationController < ActionController::Base
  before_action :set_mode

  private
  def set_mode
    session[:mode] = 'light'
  end
end
