class UsersController < ApplicationController
  def index
  end

  def show
    @User=User.find(params[:id])

  end

  def edit
  end
  
end
