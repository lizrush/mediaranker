class BooksController < ApplicationController
before_action :set_book, only: [:show, :update, :destroy, :upvote]
# GET /books
def index
  @books = Book.all
end

# GET /books/:id
def show
end

# GET /books/new
def new
  @book = Book.new
end

# POST /books
def create
  @book = Book.new(book_params)

  if @book.save
    redirect_to @book, notice: 'Book was successfully created.'
  else
    render 'new'
  end
end

# GET /books/:id/edit
def edit
end

# PUT/PATCH /books/:id
def update
  if @book.update
    if params[:book][:vote]
      redirect_to :back
    else
      redirect_to @book, notice: 'Book was successfully updated.'
    end
  else
    render 'edit'
  end
end

# DELETE /books/:id
def destroy
  @book.destroy
  redirect_to '/books'
end


private
  def book_params
    params.require(:book).permit(:title, :author, :description, :id, :vote)
  end

 def set_book
    @book = Book.find(params[:id])
  end
end