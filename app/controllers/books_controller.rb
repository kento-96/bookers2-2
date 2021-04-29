class BooksController < ApplicationController
def index
  @user=User.find(current_user.id)
  @book=Book.new
  @book=Book.all
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
