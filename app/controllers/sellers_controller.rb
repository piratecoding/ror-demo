class SellersController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@sellers = Seller.all
		@sellers = Seller.order(sort_column + " " + sort_direction)
	end

	def new
		@sellers = Seller.new		
	end

	def create
		@sellers = Seller.new(seller_params)

		if @sellers.save
			flash[:notice] = 'Seller created successfully!'
			redirect_to sellers_path
		else
			render :new
		end		
	end

	def edit
		@seller = Seller.find(params[:id])
	end

	def update
		@seller = Seller.find(params[:id])

		if @seller.update(seller_params)
			redirect_to sellers_path
		else
			render :edit
		end
	end

	def show
		@seller = Seller.find(params[:id])
	end

	def destroy
		@seller = Seller.find(params[:id])
		@seller.destroy
		flash[:notice] = 'Seller deleted successfully!'
		redirect_to sellers_path		
	end

	private

	def seller_params
		params.require(:seller).permit(:name, :rating);		
	end

	def sort_column
		params[:sort] || "rating"		
	end

	def sort_direction
		params[:direction] || "desc"		
	end
end