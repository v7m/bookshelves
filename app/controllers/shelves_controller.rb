class ShelvesController < ApplicationController
	before_action :get_shelf, only: [:show, :destroy, :update, :edit, :random_book]
	before_action :authenticate_user!, except: [:index]
	before_action  except: [:index, :new, :create]  do 
        render_shelf_not_find unless @shelf.user == current_user     
    end
	
	def index
		@shelves = current_user.shelves.order(:name) if user_signed_in?
	end
	
	def show
		@books = @shelf.books.order(:created_at)
		@not_readed_books = @books.not_readed
		@readed_books = @books.readed
		@read_now_books = @books.read_now
		respond_to do |format|
			format.html
      		format.js { render :books }
      		# format.json  { render json: { books: @books, 
        #                not_readed_books: @not_readed_books,
        #                readed_books: @readed_books,
        #                read_now_books: @read_now_books }.to_json }
      	end	

    end
		
	def random_book
		@rand_book = @shelf.books.rand_book
		render json: @rand_book.to_json 
	end	

	def new
		@shelf = Shelf.new
	end

	def create
		@shelf = Shelf.new(shelf_params)
		@shelf.user = current_user
		if @shelf.save
			flash[:notice] = 'Shelf successfully created!'
			redirect_to [@shelf]
		else 
			render action: 'new'
		end		
	end

	def edit

	end

	def update
		if @shelf.update(shelf_params)
			flash[:notice] = 'Shelf successfully updated!'
			redirect_to [@shelf]
		else
			render action: 'edit'
		end		
	end	

	def destroy
		if @shelf.destroy
			flash[:notice] = 'Shelf successfully destroyed!'
			redirect_to shelves_path
		end	
	end	

	private

	def get_shelf
		@shelf = Shelf.find(params[:id])
	end	

	def shelf_params
		params.require(:shelf).permit(:name)
	end	

	def render_shelf_not_find
        render file: "#{Rails.root}/public/shelf_not_find.html"
    end
end
