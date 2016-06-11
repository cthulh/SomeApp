class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comments_params)
		@comment.user = current_user
		@comment.save
		redirect_to product_path(@product)
	end

	def show
  		
	end

	def destroy
		
	end


	private

	def comments_params
		params.require(:comment).permit(:user_id, :body, :rating)
	end

end