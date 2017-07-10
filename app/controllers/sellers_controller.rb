class SellersController < ApplicationController
	helper_method :sort_column, :sort_direction
	before_action :find_seller, { only: [:edit, :update, :show, :destroy] }

	def index
		@sellers = Seller.all
		@sellers = Seller.order(sort_column + " " + sort_direction)
	end

	def new
		@seller = Seller.new		
	end

	def create
		@seller = Seller.new(seller_params)

		if @seller.save
			flash[:notice] = 'Seller created successfully!'
			redirect_to sellers_path
		else
			render :new
		end		
	end

	def edit
	end

	def update
		if @seller.update(seller_params)
			redirect_to sellers_path
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		@seller.destroy
		flash[:notice] = 'Seller deleted successfully!'
		redirect_to sellers_path		
	end

	private

	def seller_params
		params.require(:seller).permit(:name, :rating);		
	end

	def find_product
		@seller = Seller.find(params[:id])		
	end

	def sort_column
		params[:sort] || "rating"		
	end

	def sort_direction
		params[:direction] || "desc"		
	end
end