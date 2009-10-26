class CommentsController < ApplicationController
    def index
    @comments = Comment.find(:all, :order => 'id DESC')
    @comment = Comment.new(:url => request.env['REQUEST_URI'])
    render :layout => false
  end


  def create
    if (params[:username].empty?)
      comment = Comment.new(params[:comment])
      comment.save
      WebMailer.deliver_comment_email(comment.content, comment.author)
    end
    redirect_to :back
  end
end
