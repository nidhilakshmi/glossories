class CommentsController < ApplicationController
	def create
		@synonym = Synonym.find(params[:synonym_id])
		@comment = @synonym.comments.create(comment_params)
			redirect_to synonym_path(@synonym)
	end

	 private

	 def comment_params

	 	params.require(:comment).permit(:comments)
	 	
	 end
end
