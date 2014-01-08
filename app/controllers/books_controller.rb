class BooksController < ApplicationController

# GET /books
def index
  @books = Book.all
end

# GET /books/:id
def show
  @book = Book.find(params[:id])
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
    redirect_to @book, notice: 'Book was successfully updated.'
  else
    render 'edit'
  end
end

# POST books/:id/upvote
  def upvote
    @book = Book.find(params[:id])

    if @book.upvotes.nil?
      @book.upvotes = 1
    else
      @book.upvotes += 1
    end
    @book.save
    redirect_to :back
  end

# DELETE /books/:id
def destroy
  @book.destroy
  redirect_to '/books'
end


private
  def book_params
    params.require(:book).permit(:title, :author, :description, :id)
  end

end