class UsersController < ApplicationController
def index
  @book=Book.new
  @users=User.all
  @user=current_user

end

def create
end

def show
  @user=User.find(params[:id])
  @book=Book.new
  @books=@user.books

end

def edit
end

def update
end

def destroy
end

end
