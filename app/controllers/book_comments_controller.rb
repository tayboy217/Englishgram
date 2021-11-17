class BookCommentsController < ApplicationController
   def create
		@english = English.find(params[:english_id])
		@book_comment = BookComment.new(book_comment_params)
		@book_comment.english_id = @english.id
		@book_comment.user_id = current_user.id
		if @book_comment.save
  		redirect_to english_path(@english.id)
		else
		  render 'englishes/show'
		end
	end

	def destroy
	  @english = English.find(params[:english_id])
  	book_comment = @english.book_comments.find(params[:id])
		book_comment.destroy
		redirect_to request.referer
	end

	private
	def book_comment_params
		params.require(:book_comment).permit(:comment)
	end
end
