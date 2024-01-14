class UsersController < ApplicationController
  def index
    # @users = User.all.decorate
    @users = User.all.map { |user| SimpleUserDecorator.new(user)}
  end

  def show
    # @user = User.find(params[:id]).decorate
    user = User.find(params[:id])
    @user = SimpleUserDecorator.new(user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :surname, :email, :phone, :country, :city, :street)
  end
end
