class ShelvesController < ApplicationController
	before_action :get_shelf, only: [:show, :destroy, :update, :edit]
	
	def index
		@shelves = Shelf.all
	end
	
	def show
		@books = @shelf.books.order(:created_at)
		@rand_book = @shelf.books.where(readed: :false).order("RANDOM()").first
	end

	def new
		@shelf = Shelf.new
	end

	def create
		@shelf = Shelf.new(shelf_params)
		if @shelf.save
			redirect_to [@shelf]
		else 
			render action: 'new'
		end		
	end

	def edit

	end

	def update
		if @shelf.update(shelf_params)
			redirect_to [@shelf]
		else
			render action: 'edit'
		end		
	end	

	def destroy
		@shelf.destroy
		redirect_to shelves_path
	end	

	private

	def get_shelf
		@shelf = Shelf.find(params[:id])
	end	

	def shelf_params
		params.require(:shelf).permit(:name)
	end	
end
