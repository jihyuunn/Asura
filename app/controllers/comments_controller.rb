class CommentsController < ApplicationController
  def create
    @comment=Comment.new(comment_params)
    @comment.fortune_id=params[:fortune_id]
    @comment.save
    
    redirect_to fortune_path(params[:fortune_id])
  end

  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    
    redirect_to fortune_path(params[:fortune_id])
  end
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end
