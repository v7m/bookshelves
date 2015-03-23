class BooksController < ApplicationController
	before_action :get_shelf
	before_action :get_book, only: [:destroy, :edit, :update]
	def index
		
	end
	
	def show
		
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		@book.shelf_id = @shelf.id
		if @book.save
			redirect_to shelf_path(@shelf)
		else 
			render action: 'new'
		end		
	end

	def edit

	end

	def update
		if @book.update(book_params)
			redirect_to shelf_path(@shelf)
		else
			render action: 'edit'	
		end	
	end	

	def destroy
		@book.destroy
		redirect_to shelf_path(@shelf)
	end	

	private

	def get_shelf
		@shelf = Shelf.find(params[:shelf_id])
	end	

	def get_book
		@book = Book.find(params[:id])
	end	

	def book_params
		params.require(:book).permit(:title, :author, :year, :readed)
	end	
end
