class UsersController < ApplicationController
  def index
  end

  def show
    @book = Book.new
    @User = User.find(params[:id])
    @Users = User.all
    @Books = Book.all
  end


  def edit
    @User=User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end
  
   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
