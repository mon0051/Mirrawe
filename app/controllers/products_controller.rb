class ProductsController < ApplicationController
	before_action :authenticate_admin!
	skip_before_action :authenticate_admin!, only:[:index,:show]
	def index
		@products = Product.all
	end
	def new
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
