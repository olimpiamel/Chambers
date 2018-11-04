class CommentsController < ApplicationController
  def create
    @property = Property.find(params[:property_id])
    @comment = @property.comments.create(comment_params)
    redirect_to property_path(@property)
  end

  def destroy
    @property = Property.find(params[:property_id])
    @comment = @property.comments.find(params[:id])
    @comment.destroy
    redirect_to property_path(@property)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
