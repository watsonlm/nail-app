class CommentController < ApplicationController
  def comment_params
  	params.require(:comment).permit(:userid, :comment_entry, :polishid)
end
