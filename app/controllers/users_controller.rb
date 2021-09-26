class UsersController < ApplicationController
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
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
    flash[:notice]="You have updated user successfully."
  end
  
   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
