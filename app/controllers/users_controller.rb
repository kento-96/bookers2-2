class UsersController < ApplicationController
def index
  @book=Book.new
  @users=User.all
  @user=current_user
  
end

def create
end

def show
end

def edit
end

def update
end

def destroy
end

end
