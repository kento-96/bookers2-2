class BooksController < ApplicationController
def index
  @user=User.find(current_user.id)
  @book=Book.new
  @books=Book.all
end

def create
 @book=Book.new(book_params)
 @user=User.find(current_user.id)
 @books=Book.all
 @book.user_id=current_user.id
 @book.save
 redirect_to book_path(@book.id)
end

def show
    @book=Book.new
    @book=Book.find(params[:id])
    @user=User.find(@book.user_id)
end

def edit
  @book=Book.find(params[:id])
end

def update
  @book=Book.find(params[:id])
  @book.update(book_params)
  redirect_to book_path(@book.id)
end

def destroy
  @book=Book.find(params[:id])
  @book.destroy
  redirect_to books_path
end

private
  def book_params
    params.permit(:title,:body)
  end
end
