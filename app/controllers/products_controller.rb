class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def new
		before_action :authenticate_user!
		@product = Product.new

	end
	def create
		@product = Product.new(params.require(:product).permit(:cost,:name,:price,:image_id,:qty,:restock_time,:description))
		@product.save
		redirect_to @product
	end
	def show
		@product = Product.find(params[:id])
	end
end
