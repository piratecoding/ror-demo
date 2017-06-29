class ProductsController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
	@products = Product.all
	@products = Product.order(sort_column + " " + sort_direction)
	end

	def new
		@product = Product.new		
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			flash[:notice] = 'Product created successfully!'
			redirect_to products_path
		else
			render :new
		end
		# @product = Product.new
		# @product.name = params[:product][:name]	
		# @product.price = params[:product][:price]
		# @product.seller_id = params[:product][:seller_id]
		# @product.save!
		# Ovako ne treba
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to products_path
		else
			render :edit
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:notice] = 'Product deleted successfully!'
		redirect_to products_path		
	end

	private

	def product_params
		params.require(:product).permit(:name, :price, :description, :seller_id);		
	end

	def sort_column
		params[:sort] || "price"		
	end

	def sort_direction
		params[:direction] || "desc"		
	end
end