class UsersController < ApplicationController
  def index
    @word = Word.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome!"
    else
      render 'new'
    end
  end

  def show
    @word = Word.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
