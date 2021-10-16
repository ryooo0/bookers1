class BooksController < ApplicationController

  def index
    @book = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to post_path(@book.id)
    else
      redirect_to :books
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to post_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to :books
    flash[:notice] = "Book was successfully destroyed."
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end