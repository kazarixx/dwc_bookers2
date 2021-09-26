class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
    @book = Book.new
    @User = User.find(current_user.id)
    @Users = User.all
    @Books = @User.books
  end

  def show
    @book = Book.new
    @User = User.find(params[:id])
    @Users = User.all
    @Books = @User.books
  end


  def edit
    @User=User.find(params[:id])
    if @User == current_user
      render:edit
    else
      redirect_to user_path(current_user.id)
    end
  end
  
  def update
    @User = User.find(params[:id])
    if @User.update(user_params)
    redirect_to user_path(@User.id)
    flash[:notice]="You have updated user successfully."
    else
      render:edit
    end
  end
  
   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
