class BooksController < ApplicationController
	before_action :get_shelf
	before_action :get_shelves, only: [:edit, :update, :create, :new]
	before_action :get_book, only: [:destroy, :edit, :update]
	before_action :authenticate_user!
	before_action  except: [:new, :create]  do 
        render_book_not_find unless @book.shelf.user == current_user     
    end

	def index
		
	end
	
	def show
		
	end

	
	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		@book.shelf = @shelf
		if @book.save
			flash[:notice] = 'Book successfully created!'
			redirect_to shelf_path(@shelf)
		else 
			render action: 'new'
		end		
	end

	def edit

	end

	def update
		if @book.update(book_params)
			flash[:notice] = 'Book successfully updated!'
			redirect_to shelf_path(@shelf)
		else
			@shelves = current_user.shelves.order(:name) 
			render action: 'edit'	
		end	
	end	

	def destroy
		if @book.destroy
			flash[:notice] = 'Book successfully destroyed!'
			redirect_to shelf_path(@shelf)
		end	
	end	

	private

	def get_shelves
		@shelves = current_user.shelves.order(:name) if user_signed_in? 
	end

	def get_shelf
		@shelf = Shelf.find(params[:shelf_id])
	end	

	def get_book
		@book = Book.find(params[:id])
	end	

	def book_params
		params.require(:book).permit(:title, :author, :status, :shelf_id, :description)
	end	

	def render_book_not_find
        render file: "#{Rails.root}/public/book_not_find.html"
    end
end
