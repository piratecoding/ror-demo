class ProductsController < ApplicationController
	before_action :authorize
	helper_method :sort_column, :sort_direction
	before_action :find_product, { only: [:edit, :update, :show, :destroy] }

	def index
		@products = Product.all
		@products = Product.order(sort_column + " " + sort_direction)

		respond_to do |format|
			format.html
			format.json { render :json => @products.to_json }
			format.json { render :xml => @products.to_xml }
		end
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
	end

	def update
		if @product.update(product_params)
			redirect_to products_path
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		@product.destroy
		flash[:notice] = 'Product deleted successfully!'
		redirect_to products_path		
	end

	private

	def product_params
		params.require(:product).permit(:name, :category_id, :price, :description, :seller_id);		
	end

	def find_product
		@product = Product.find(params[:id])		
	end

	def sort_column
		params[:sort] || "price"		
	end

	def sort_direction
		params[:direction] || "desc"		
	end
end