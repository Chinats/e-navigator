class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @interviews = Interview.all
    @users = User.all
  end
end
