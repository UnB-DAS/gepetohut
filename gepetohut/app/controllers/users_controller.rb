class UsersController < ApplicationController

  load_and_authorize_resource
  check_authorization
  def index
    @users = User.all
  end

  def show
    @user = User.find( params[ :id ] )
  end
end
