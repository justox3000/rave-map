class CommentsController < ApplicationController

before_action :set_party, only:[:new, :create, :index]

  def index
    @comments = @party.comments
  end

  def new
    @comment = Comment.new
    authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.party = @party
    if @comment.save
      redirect_to party_path(@party)
    else
      raise
      render :new, status: :unprocessable_entity
    end
    authorize @comment
  end

  private
  def set_party
    @party = Party.find(params[:party_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :rating)
  end

end
