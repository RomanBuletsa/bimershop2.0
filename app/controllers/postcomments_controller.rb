class PostcommentsController < ApplicationController
before_action :authenticate_user!
def create
params[:postcomment][:post_id] = params[:post_id]
params[:postcomment][:user_id] = current_user.id
@comment = Postcomment.create(postcomments_params)
if @comment.save
redirect_to post_path(params[:post_id])
else
	@comment.errors.full_messages.each do |msg|
		@msg=msg
end
flash[:notice] = "#{@msg}"
redirect_to post_path(params[:post_id])
end
end

private

def postcomments_params
params.require(:postcomment).permit(:user_id, :post_id, :text)
end


end